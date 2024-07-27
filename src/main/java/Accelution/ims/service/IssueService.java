/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Accelution.ims.service;

import Accelution.ims.datatable.DataTableRepo;
import Accelution.ims.datatable.DataTableRequest;
import Accelution.ims.datatable.DataTablesResponse;
import Accelution.ims.dto.SlimSelectDTO;
import Accelution.ims.dto.IssueDTO;
import Accelution.ims.model.FilePendings;
import Accelution.ims.model.Issue;
import Accelution.ims.model.Comment;
import Accelution.ims.repo.CommentRepo;
import Accelution.ims.repo.FilePendingRepo;
import Accelution.ims.repo.IssueRepo;
import Accelution.ims.repo.TypeRepo;
import Accelution.ims.repo.UserRepo;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.time.LocalDate;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import org.apache.catalina.mapper.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import Accelution.ims.model.User;
import java.util.ArrayList;
import java.util.Date;
import org.springframework.beans.factory.annotation.Value;

/**
 *
 * @author L580
 */
@Service
public class IssueService {

    @Value("application.ticket-document-location")
    private String applicationTicketDocumentLocation;
    @Autowired
    private DataTableRepo<IssueDTO> userDt;
    @Autowired
    private IssueRepo repo;
    @Autowired
    private CommentRepo crepo;
    @Autowired
    private TypeRepo repor;
    @Autowired
    private UserRepo repors;
    @Autowired
    private FilePendingRepo issuerepo;

    public Map<String, Long> getStatusCounts(User currentUser) {
        Map<String, Long> counts = new HashMap<>();

        String accessType = getAccessTypeString(currentUser.getAccess());
        String companyId = null;
        String departmentId = null;
        Integer userId = null;

        if (currentUser == null) {
            throw new IllegalArgumentException("Current user cannot be null");
        }

        if (accessType != null) {
            switch (accessType) {
                case "Company":
                    companyId = currentUser.getCompany();
                    break;
                case "Department":
                    companyId = currentUser.getCompany();
                    departmentId = currentUser.getDepartment();
                    break;
                case "User":
                    userId = currentUser.getId();
                    break;
                case "All":
                    // No filtering needed for All
                    break;
                default:
                    throw new IllegalArgumentException("Unknown access type");
            }
        }

        counts.put("countAppr", repo.countByStatusAppr(companyId, departmentId, userId));
        counts.put("countQue", repo.countByStatusQue(companyId, departmentId, userId));
        counts.put("countInpr", repo.countByStatusInpro(companyId, departmentId, userId));
        counts.put("countDeve", repo.countByStatusDev(companyId, departmentId, userId));
        counts.put("countQa", repo.countByStatusQa(companyId, departmentId, userId));
        counts.put("countDeploy", repo.countByStatusDepl(companyId, departmentId, userId));
        counts.put("countCompl", repo.countByStatusCompleted(companyId, departmentId, userId));
        counts.put("countClos", repo.countByStatusClosed(companyId, departmentId, userId));

        return counts;
    }

    private String getAccessTypeString(String accessTypeId) {
        if (accessTypeId == null) {
            throw new IllegalArgumentException("Access type ID cannot be null");
        }

        switch (accessTypeId) {
            case "1":
                return "All";
            case "2":
                return "Company";
            case "3":
                return "Department";
            case "4":
                return "User";
            default:
                throw new IllegalArgumentException("Unknown access type ID");
        }
    }

    public DataTablesResponse<IssueDTO> getIssues(DataTableRequest param, User currentUser) throws Exception {
        String stage = param.getData();
        String accessType = getAccessTypeString(currentUser.getAccess()); // Convert to string
        String companyId = currentUser.getCompany();
        String departmentId = currentUser.getDepartment();
        Integer userId = currentUser.getId();

        String sql = "SELECT x.`id`, x.`issue`, x.`status`, x.`ref_number`, "
                + "(SELECT i.system FROM `systems` i WHERE i.`id`=x.`system`) AS `system`, "
                + "(SELECT m.`name` FROM `modules` m WHERE m.`id`=x.`module`) AS `module`, "
                + "(SELECT c.`name` FROM `company` c WHERE c.`id`=x.`company`) AS `company`, "
                + "(SELECT p.type FROM `priority` p WHERE p.`id`=x.`priority`) AS `priority`, "
                + "(SELECT d.`name` FROM `users` d WHERE d.`id`=x.`ent_by`) AS `ent_by`, `ent_on`, "
                + "(SELECT d.`name` FROM `users` d WHERE d.`id`=x.`mod_by`) AS `mod_by`, `mod_on` "
                + "FROM `issues` x WHERE TRUE";

        // Filter by stage
        if (!stage.equals("all")) {
            switch (stage) {
                case "queue":
                    sql += " AND `status`='Queue'";
                    break;
                case "inprogress":
                    sql += " AND `status`='In Progress'";
                    break;
                case "approve":
                    sql += " AND `status`='Approval Pending'";
                    break;
                case "develop":
                    sql += " AND `status`='Development Pending'";
                    break;
                case "testing":
                    sql += " AND `status`='Testing Pending'";
                    break;
                case "qa":
                    sql += " AND `status`='QA Pending'";
                    break;
                case "deploy":
                    sql += " AND `status`='Deployment Pending'";
                    break;
                case "completed":
                    sql += " AND `status`='Completed'";
                    break;
                case "unsucces":
                    sql += " AND `status`='Closed'";
                    break;
                default:
                    break;
            }
        }

        // Filter by access type
        if (accessType != null) {
            switch (accessType) {
                case "All":
                    // No additional filtering for "All"
                    System.out.println("Filtering by All");
                    break;
                case "Company":
                    sql += " AND x.`company`='" + companyId + "'";
                    System.out.println("Filtering by Company");
                    break;
                case "Department":
                    sql += " AND x.`company`='" + companyId + "' AND x.`department`='" + departmentId + "'";
                    System.out.println("Filtering by Department");
                    break;
                case "User":
                    sql += " AND x.`ent_by`=" + userId;
                    System.out.println("Filtering by User");
                    break;
                default:
                    System.out.println("Unknown access type");
                    break;
            }
        } else {
            System.out.println("Access type is null");
        }

        return userDt.getData(IssueDTO.class, param, sql);
    }

    public Iterable<SlimSelectDTO> getStatus(String search) {
        return repo.getStatus("%" + search.trim() + "%");
    }

    public Iterable<SlimSelectDTO> getPrio(String search) {
        return repo.getPrio("%" + search.trim() + "%");
    }

    private final ObjectMapper mapper = new ObjectMapper();

    public Issue saveIssue(String issue, String system, String module, String type, String priority, MultipartFile file, String desclist, HttpSession session) throws Exception {
        Issue ticket = new Issue();
        ticket.setIssue(issue);
        ticket.setSystem(system);
        ticket.setModule(module);
        ticket.setType(type);
        ticket.setPriority(priority);
        String companyFromSession = (String) session.getAttribute("company");
        ticket.setCompany(companyFromSession);
        String departmentFromSession = (String) session.getAttribute("department");
        ticket.setDepartment(departmentFromSession);
        ticket.setStatus("Queue");
        ticket = repo.save(ticket);

        JsonNode fileList = mapper.readTree(desclist);
        for (int i = 0; i < fileList.size(); i++) {
            JsonNode fileItem = fileList.get(i);

            Comment attachment = new Comment();
            attachment.setIssue(ticket.getId());
            attachment.setComment(fileItem.get("comment").asText());
            attachment.setStatus("active");

            String comType = fileItem.get("comtype").asText();

            if ("External".equals(comType)) {
                attachment.setCom_type("External");
            } else {
                attachment.setCom_type("Internal");
            }

            if (file != null) {
                String directoryPath = "TMS\\Comments\\";
                File directory = new File(directoryPath);
                if (!directory.exists()) {
                    if (directory.mkdirs()) {
                        System.out.println("Directory created successfully");
                    } else {
                        throw new Exception("Failed to create directory");
                    }
                }

                String[] split = file.getOriginalFilename().split("\\.");
                File des = new File(directory, ticket.getId() + "_" + i + "." + split[split.length - 1]);
                file.transferTo(Path.of(des.getAbsolutePath()));
                System.out.println(des);
                attachment.setPath(des.getName());
            } else {
                attachment.setPath(fileItem.get("path").asText());
            }

            attachment = crepo.save(attachment);
            System.out.println("attachment - " + attachment.getId());
        }

        return repo.save(ticket);
    }

    @Transactional(rollbackFor = Exception.class)
    public Issue updateIssue(Integer id, Map<String, MultipartFile> files, String desclist, String statusque, String assign, String date) throws IOException {
        // Fetch the existing issue from the repository
        Issue updateissue = repo.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Issue not found with id: " + id));
        System.out.println("Issue found: " + updateissue);

        // Parse the desclist JSON string into a JsonNode object
        JsonNode fileList;
        try {
            fileList = mapper.readTree(desclist);
            System.out.println("Parsed desclist JSON: " + fileList.toString());
        } catch (IOException e) {
            System.out.println("Invalid JSON format for desclist: " + desclist);
            e.printStackTrace();
            throw new IllegalArgumentException("Invalid JSON format for desclist: " + desclist, e);
        }

        // Prepare to collect comments that need to be saved
        List<Comment> commentsToSave = new ArrayList<>();

        // Process each item in the desclist
        for (int i = 0; i < fileList.size(); i++) {
            JsonNode fileItem = fileList.get(i);
            System.out.println("Processing fileItem: " + fileItem.toString());

            // Create a new Comment object
            Comment comment = new Comment();
            comment.setIssue(updateissue.getId());
            comment.setComment(fileItem.get("comment").asText());
            comment.setStatus("active");

            // Set the comment type based on the JSON data
            String comType = fileItem.get("comtype").asText();
            comment.setCom_type("External".equals(comType) ? "External" : "Internal");

            // Initialize the file path variable
            String filePath = null;

            MultipartFile file = files.get(fileItem.get("path").asText());
            if (file != null) {
                System.out.println("hereee");
                String directoryPath = "TMS/Comments/";
                File directory = new File(directoryPath);
                if (!directory.exists()) {
                    directory.mkdirs();
                }
                String OrgfileName = file.getOriginalFilename();
                String[] split = OrgfileName.split("\\.");
                String fileName = updateissue.getId() + "_" + i + "." + split[split.length - 1];
                File destinationFile = new File(directory, fileName);
                file.transferTo(Path.of(destinationFile.getAbsolutePath()));
                comment.setPath(fileName);
            }

            // Set the file path for the comment and add the comment to the list of comments to be saved
            commentsToSave.add(comment);
        }

        // Save all comments
        for (Comment comment : commentsToSave) {
            crepo.save(comment);

        }

        // Update the issue's status based on statusque
        if (statusque != null && !statusque.trim().isEmpty()) {

            switch (statusque) {
                case "uns":
                    updateissue.setStatus("Closed");
                    break;
                case "inp":
                    updateissue.setStatus("In Progress");
                    break;
                case "qa":
                    updateissue.setStatus("QA Pending");
                    break;
                case "devPen":
                    updateissue.setStatus("Development Pending");
                    break;
                case "com":
                    updateissue.setStatus("Completed");
                    break;
                case "open":
                    updateissue.setStatus("Queue");
                    break;
                case "deploy":
                    updateissue.setStatus("Deployment Pending");
                    break;
                case "close":
                    updateissue.setStatus("Closed");
                    break;
                case "app":
                    updateissue.setStatus("Approval Pending");
                    break;
                default:
                    System.out.println("Invalid statusque value: " + statusque);
                    throw new IllegalArgumentException("Invalid statusque value: " + statusque);
            }
        }

        if (assign != null) {
            updateissue.setAssign(assign);
        }
        updateissue.setDate(date);
        Issue savedIssue = repo.save(updateissue);

        return savedIssue;
    }
    @Autowired
    private JdbcTemplate jdbc;

    public Map<String, Object> getIssueses(Integer id) throws Exception {
        // Fetch the Issue object
        Issue issue = repo.findById(id).orElseThrow(() -> new Exception("Issue not found"));

        // Fetch the user's name
        Map<String, Object> name = jdbc.queryForMap("SELECT `name` as entered FROM `users` WHERE `id` = ?", issue.getEnt_by());
        issue.setEntUser((String) name.get("entered"));

        // Fetch the company's name
        Map<String, Object> company = jdbc.queryForMap("SELECT `name` as comname FROM `company` WHERE `id` = ?", issue.getCompany());
        issue.setComname((String) company.get("comname"));

        // Fetch the system's name
        Map<String, Object> systemn = jdbc.queryForMap("SELECT `system` as sysname FROM `systems` WHERE `id` = ?", issue.getSystem());
        issue.setSysname((String) systemn.get("sysname"));

        // Fetch the module's name
        Map<String, Object> modulen = jdbc.queryForMap("SELECT `name` as modulename FROM `modules` WHERE `id` = ?", issue.getModule());
        issue.setModulename((String) modulen.get("modulename"));

        Map<String, Object> assignto = jdbc.queryForMap("SELECT `name` as assigntoc FROM `users` WHERE `id` = ?", issue.getAssign());
        issue.setAssigntoc((String) assignto.get("assigntoc"));
        // Fetch the list of active comments
        List<Comment> comments = crepo.findByIssueAndStatus(id, "active");

        // Fetch the commenter's name for each comment
        for (Comment comment : comments) {
            Map<String, Object> commentby = jdbc.queryForMap("SELECT `name` as commenter FROM `users` WHERE `id` = ?", comment.getEnt_by());
            comment.setCommenter((String) commentby.get("commenter"));
        }

        // Combine all the data into a single map
        Map<String, Object> combinedData = new HashMap<>();
        combinedData.put("d2", name);
        combinedData.put("d3", company);
        combinedData.put("d4", systemn);
        combinedData.put("d5", modulen);
        combinedData.put("d6", assignto);
        combinedData.put("obj", issue);
        combinedData.put("videos", comments);

        return combinedData;
    }

//    public Map<String, Object> getIssueses(Integer id) throws Exception {
//        Issue sys = repo.findById(id).get();
//
//        Map<String, Object> name = jdbc.queryForMap("SELECT `name` as entered FROM `users` WHERE `id` = ?", sys.getEnt_by());
//        sys.setEntUser((String) name.get("entered"));
//        Map<String, Object> combinedData = new HashMap<>();
//        combinedData.put("d2", name);
//        combinedData.put("obj", sys);
//
//        return combinedData;
//    }
//
//    public Object getIssue(Integer id) throws Exception {
//        Issue content = repo.findById(id).get();
//        List<Comment> videos = crepo.findByIssueAndStatus(id, "active");
//        Map<String, Object> data = new HashMap<>();
//        data.put("content", content);
//        data.put("videos", videos);
//        return data;
//    }
//
//    @Autowired
//    private JdbcTemplate jdbc;
//
//    public Issue getIssueFile(Integer id) throws Exception {
//        Issue sys = repo.findById(id).get();
//
//        Map<String, Object> data = jdbc.queryForMap("SELECT `description` as product_txt FROM `loan`.`product`  WHERE `id` = ?", sys.getProduct());
//        System.out.println(data);
//        sys.setProductTxt((String) data.get("product_txt"));
//
//        return sys;
//    }
//
//    private final ObjectMapper mapper = new ObjectMapper();
//
//    public Issue uploadFiles(Integer id, String desclist, String statusack) throws Exception {
//        Issue system = repo.findById(id).orElseThrow(() -> new Exception("Record not found with id: " + id));
//        system.setPendings(system.getId());
//
//        system = repo.save(system);
//
//        switch (statusack) {
//            case "payProcess":
//                system.setStatus("Payment Voucher Hand Over To Finance");
//                break;
//
//            case "fileped":
//                system.setStatus("Exceptions");
//                JsonNode fileList = mapper.readTree(desclist);
//                for (JsonNode fileItem : fileList) {
//                    FilePendings attachment = new FilePendings();
//                    attachment.setPendings(system.getId());
//                    attachment.setName(fileItem.get("name").asText());
//                    attachment.setJustification(fileItem.get("justification").asText());
//                    attachment.setDate(LocalDate.parse(fileItem.get("completionDate").asText()));
//                    attachment.setStatus("active");
//                    issuerepo.save(attachment);
//                }
//                break;
//
//            default:
//                // Handle default case if necessary
//                break;
//        }
//
//        return repo.save(system);
//    }
//
//    public Object getClearance(Integer id) throws Exception {
//        Issue sys = repo.findById(id).orElseThrow(() -> new Exception("Issue not found for id: " + id));
//
//        // Fetch product data
//        Map<String, Object> data;
//        try {
//            data = jdbc.queryForMap("SELECT `description` as product_txt FROM `loan`.`product` WHERE `id` = ?", sys.getProduct());
//            sys.setProductTxt((String) data.get("product_txt"));
//        } catch (EmptyResultDataAccessException e) {
//            // Handle the case where no product is found
//            data = new HashMap<>();
//            data.put("product_txt", "Product not found");
//            sys.setProductTxt("Product not found");
//        }
//
//        // Fetch approver data
//        Map<String, Object> datas;
//        try {
//            datas = jdbc.queryForMap("SELECT `name` as approvername FROM `users` WHERE `id` = ?", sys.getApprover());
//            sys.setApproverName((String) datas.get("approvername"));
//        } catch (EmptyResultDataAccessException e) {
//            // Handle the case where no approver is found
//            datas = new HashMap<>();
//            datas.put("approvername", "Approver not found");
//            sys.setApproverName("Approver not found");
//        }
//
//        // Fetch content again to ensure it's up-to-date
//        Issue content = repo.findById(id).orElseThrow(() -> new Exception("Issue not found for id: " + id));
//        List<FilePendings> videos = issuerepo.findByPendingsAndStatus(id, "active");
//
//        for (FilePendings video : videos) {
//            try {
//                Map<String, Object> name = jdbc.queryForMap("SELECT `name` as entered FROM `users` WHERE `id` = ?", video.getMod_by());
//                String enteredName = (String) name.get("entered");
//                video.setModby(enteredName);
//            } catch (EmptyResultDataAccessException e) {
//                // Handle the case where no user is found
//                video.setModby("User not found");
//            }
//        }
//
//        // Adding all the data to the return map
//        Map<String, Object> result = new HashMap<>();
//        result.put("productData", data);
//        result.put("approverData", datas);
//        result.put("content", content);
//        result.put("videos", videos);
//
//        return result;
//    }
//
//    public Issue updateClearance(Integer id, String desclist, String deleteIds, String statusclr) {
//        try {
//            Issue system = repo.findById(id).orElseThrow(() -> new Exception("FMR not found"));
//
//            // Handle deleteIds
//            if (deleteIds != null) {
//                JsonNode toBeDeleted = mapper.readTree(deleteIds);
//                for (JsonNode jsonNode : toBeDeleted) {
//                    Optional<FilePendings> optionalMembers = issuerepo.findById(Integer.parseInt(jsonNode.asText()));
//                    if (optionalMembers.isPresent()) {
//                        FilePendings attachmentToDelete = optionalMembers.get();
//                        attachmentToDelete.setStatus("deactivate");
//                        issuerepo.save(attachmentToDelete);
//                    } else {
//                        throw new Exception("FMR with ID " + jsonNode.asText() + " not found");
//                    }
//                }
//            }
//
//            // Handle desclist
//            if (desclist != null && !desclist.isEmpty()) {
//                JsonNode fileList = mapper.readTree(desclist);
//                for (int i = 0; i < fileList.size(); i++) {
//                    JsonNode fileItem = fileList.get(i);
//                    String fileName = fileItem.get("name").asText();
//
//                    FilePendings attachment = new FilePendings();
//                    attachment.setPendings(system.getId());
//                    attachment.setName(fileName);
//                    attachment.setStatus("active");
//                    issuerepo.save(attachment);
//                }
//            }
//
//            // Handle statusclr
//            if ("approve".equals(statusclr)) {
////                system.setApprover(approver);
//                system.setStatus("Undertaking Recommendation");
//            } else if ("cleared".equals(statusclr)) {
//                system.setStatus("Payment Voucher Hand Over To Finance");
//            }
//
//            return repo.save(system);
//        } catch (Exception e) {
//            e.printStackTrace();
//            throw new RuntimeException("Failed to update FMR with File Pendings", e);
//        }
//    }
//
//    private boolean containsMembersId(String desclist, Integer attachmentId) throws JsonProcessingException {
//        JsonNode fileList = mapper.readTree(desclist);
//        for (int i = 0; i < fileList.size(); i++) {
//            JsonNode fileItem = fileList.get(i);
//            Integer fileId = fileItem.get("fileId").asInt();
//            if (fileId.equals(attachmentId)) {
//                return true;
//            }
//        }
//        return false;
//    }
//
//    public Iterable<SlimSelectDTO> getApprover(String search) {
//        return repors.getApprover("%" + search.trim() + "%");
//    }
//
//    public Issue updateRecommendation(Integer id, String approver) throws Exception {
//        Issue rec = repo.findById(id).get();
//
//        rec.setApprover(approver);
//        rec.setStatus("Undertaking Approval Pending");
//
//        rec = repo.save(rec);
//        return rec;
//    }
//
//    public Issue updateUndertaking(Integer id, String statusund) throws Exception {
//        Issue updateissue = repo.findById(id).get();
//
//        switch (statusund) {
//            case "returned":
//                updateissue.setStatus("Exceptions");
//
//                break;
//            case "approved":
//                updateissue.setStatus("Payment Voucher Hand Over To Finance(Undertaking Approval)");
//                break;
//
//            default:
//                // Handle default case if necessary
//                break;
//        }
//
//        updateissue = repo.save(updateissue);
//        return updateissue;
//    }
//
//    public Issue updatePaymentUP(Integer id, String desclist, String deleteIds, String statusvoucherun) {
//        try {
//            Issue system = repo.findById(id).orElseThrow(() -> new Exception("FMR not found"));
//
//            // Handle deleteIds
//            if (deleteIds != null) {
//                JsonNode toBeDeleted = mapper.readTree(deleteIds);
//                for (JsonNode jsonNode : toBeDeleted) {
//                    Optional<FilePendings> optionalMembers = issuerepo.findById(Integer.parseInt(jsonNode.asText()));
//                    if (optionalMembers.isPresent()) {
//                        FilePendings attachmentToDelete = optionalMembers.get();
//                        attachmentToDelete.setStatus("deactivate");
//                        issuerepo.save(attachmentToDelete);
//                    } else {
//                        throw new Exception("FMR with ID " + jsonNode.asText() + " not found");
//                    }
//                }
//            }
//
//            // Handle desclist
//            if (desclist != null && !desclist.isEmpty()) {
//                JsonNode fileList = mapper.readTree(desclist);
//                for (int i = 0; i < fileList.size(); i++) {
//                    JsonNode fileItem = fileList.get(i);
//                    String fileName = fileItem.get("name").asText();
//
//                    FilePendings attachment = new FilePendings();
//                    attachment.setPendings(system.getId());
//                    attachment.setName(fileName);
//                    attachment.setStatus("active");
//                    issuerepo.save(attachment);
//                }
//            }
//            switch (statusvoucherun) {
//                case "completedun":
//                    system.setStatus("Completed(Undertaking Approval)");
//                    break;
//
//                default:
//                    // Handle default case if necessary
//                    break;
//            }
//            return repo.save(system);
//        } catch (Exception e) {
//            e.printStackTrace();
//            throw new RuntimeException("Failed to update FMR with File Pendings", e);
//        }
//    }
//
//    public Map<String, Object> getPayment(Integer id) throws Exception {
//        // Fetch the Issue object
//        Issue sys = repo.findById(id).orElseThrow(() -> new Exception("Issue not found for id: " + id));
//
//        // Fetch product data
//        Map<String, Object> data;
//        try {
//            data = jdbc.queryForMap("SELECT `description` as product_txt FROM `loan`.`product` WHERE `id` = ?", sys.getProduct());
//            sys.setProductTxt((String) data.get("product_txt"));
//        } catch (EmptyResultDataAccessException e) {
//            // Handle the case where no product is found
//            data = new HashMap<>();
//            data.put("product_txt", "Product not found");
//            sys.setProductTxt("Product not found");
//        }
//        System.out.println(data);
//
//        // Fetch approver data
//        Map<String, Object> datas;
//        try {
//            datas = jdbc.queryForMap("SELECT `name` as approvername FROM `users` WHERE `id` = ?", sys.getApprover());
//            sys.setApproverName((String) datas.get("approvername"));
//        } catch (EmptyResultDataAccessException e) {
//            // Handle the case where no approver is found
//            datas = new HashMap<>();
//            datas.put("approvername", "Approver not found");
//            sys.setApproverName("Approver not found");
//        }
//        System.out.println(datas);
//
//        // Combine the data into a single map
//        Map<String, Object> combinedData = new HashMap<>();
//        combinedData.put("d1", data);
//        combinedData.put("d2", datas);
//        combinedData.put("obj", sys);
//
//        return combinedData;
//    }
//
//    public Issue updateVoucher(Integer id, String statusvoucher) throws Exception {
//        Issue updateissue = repo.findById(id).get();
//
//        switch (statusvoucher) {
//            case "completed":
//                updateissue.setStatus("Completed");
//                break;
//
//            default:
//                // Handle default case if necessary
//                break;
//        }
//
//        updateissue = repo.save(updateissue);
//        return updateissue;
//    }
}
