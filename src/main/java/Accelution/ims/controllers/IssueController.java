/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Accelution.ims.controllers;

import Accelution.ims.datatable.DataTableRequest;
import Accelution.ims.datatable.DataTablesResponse;
import Accelution.ims.dto.SlimSelectDTO;
import Accelution.ims.dto.IssueDTO;
import Accelution.ims.model.Issue;
import Accelution.ims.service.IssueService;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import Accelution.ims.model.User;
import java.util.HashMap;

@RestController
@RequestMapping("/issue")
public class IssueController {

    @Autowired
    IssueService service;

    @PostMapping("/issuetable-all")
    public DataTablesResponse<IssueDTO> getIssues(@RequestBody DataTableRequest param, HttpSession session) throws Exception {
        User currentUser = getCurrentUser(session); // Assuming this method retrieves the current user from the session
        return service.getIssues(param, currentUser);
    }

    private User getCurrentUser(HttpSession session) {
        // Assuming you store the current user in the session
        return (User) session.getAttribute("currentUser");
    }

    @PostMapping("/assignto")
    public Iterable<SlimSelectDTO> getStatus(@RequestParam String search) throws Exception {
        return service.getStatus(search);
    }

    @PostMapping("/priority")
    public Iterable<SlimSelectDTO> getPrio(@RequestParam String search) throws Exception {
        return service.getPrio(search);
    }

    @GetMapping("/counts")
    public Map<String, Long> getStatusCounts(HttpSession session) {
        // Retrieve user details from session
        Integer userId = (Integer) session.getAttribute("uid");
        String company = (String) session.getAttribute("company");
        String department = (String) session.getAttribute("department");
        String access = (String) session.getAttribute("access");

        if (userId == null || company == null || department == null || access == null) {
            throw new IllegalArgumentException("User details cannot be null");
        }

        User currentUser = new User();
        currentUser.setId(userId);
        currentUser.setCompany(company);
        currentUser.setDepartment(department);
        currentUser.setAccess(access);

        // Pass the user object to the service method
        return service.getStatusCounts(currentUser);
    }

    @PostMapping("/save-issue")
    @ResponseBody
    public Issue saveIssue(@RequestParam("desclist") String desclist, MultipartHttpServletRequest req, HttpSession session) throws Exception {
        String issue = req.getParameter("issue");
        String system = req.getParameter("system");
        String module = req.getParameter("module");
        String type = req.getParameter("type");
        String priority = req.getParameter("priority");
        MultipartFile file = req.getFile("file");
        return service.saveIssue(issue, system, module, type, priority, file, desclist, session);
    }

    @PostMapping("/update-queue")
    public Issue updateIssue(
            @RequestParam Integer id,
            @RequestParam("desclist") String desclist,
            @RequestParam(required = false) String statusque,
            @RequestParam(required = false) String assign,
            @RequestParam(required = false) String date,
            MultipartHttpServletRequest req
    ) throws Exception {

        Map<String, MultipartFile> files = req.getFileMap();
        System.out.println(files);

        // Call the service layer to handle the business logic
        return service.updateIssue(id, files, desclist, statusque, assign, date);
    }

    @GetMapping("/details-all/{id}")
    public ResponseEntity<CommonResponse> details(@PathVariable Integer id) throws Exception {
        CommonResponse response = new CommonResponse("Success!", service.getIssueses(id), 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @GetMapping("/path/attachment/{name}")
    @ResponseBody
    public void view(@PathVariable String name, HttpServletResponse resp) throws IOException {

        File file = new File("TMS\\Comments\\" + name);

        if (!file.exists()) {
            resp.sendError(404, "file not found");
            return;
        }

        OutputStream out = resp.getOutputStream();
        FileInputStream in = new FileInputStream(file);
        byte[] buffer = new byte[4096];
        int length;
        while ((length = in.read(buffer)) > 0) {
            out.write(buffer, 0, length);
        }
        in.close();
        out.flush();

    }

//    @GetMapping("/content-details/{id}")
//    public ResponseEntity<CommonResponse> getDhammaContent(@PathVariable Integer id) throws Exception {
//        CommonResponse response = new CommonResponse("Success!", service.getDhammaContent(id), 200);
//        return new ResponseEntity<>(response, HttpStatus.OK);
//    }
//
//    @GetMapping("/details-file/{id}")
//    public ResponseEntity<CommonResponse> detailsFile(@PathVariable Integer id) throws Exception {
//        CommonResponse response = new CommonResponse("Success!", service.getIssueFile(id), 200);
//        return new ResponseEntity<>(response, HttpStatus.OK);
//    }
//
//    @PostMapping("/save-filePendings")
//    @ResponseBody
//    public Issue uploadFiles(
//            @RequestParam Integer id,
//            @RequestParam(name = "desclist", required = false) String desclist,
//            @RequestParam(name = "statusack") String statusack) throws Exception {
//        return service.uploadFiles(id, desclist, statusack);
//    }
//
//    @GetMapping("/clearance-details/{id}")
//    public ResponseEntity<CommonResponse> getClearance(@PathVariable Integer id) throws Exception {
//        CommonResponse response = new CommonResponse("Success!", service.getClearance(id), 200);
//        return new ResponseEntity<>(response, HttpStatus.OK);
//    }
//
//    @PostMapping("/update-fileclearance")
//    @ResponseBody
//    public Issue updateClearance(String id, String desclist, @RequestParam(value = "deleteIds", required = false) String deleteIds, @RequestParam String statusclr) throws Exception {
//        Integer idd = Integer.parseInt(id);
//        // Pass deleteIds to the service method
//        System.out.println(deleteIds);
//        return service.updateClearance(idd, desclist, deleteIds, statusclr);
//
//    }
//
//    @PostMapping("/update-recommendation")
//    @ResponseBody
//    public Issue updateRecommendation(@RequestParam Integer id, @RequestParam String approver) throws Exception {
//        return service.updateRecommendation(id, approver);
//    }
//
//    @PostMapping("/approver")
//    public Iterable<SlimSelectDTO> getApprover(@RequestParam String search) throws Exception {
//        return service.getApprover(search);
//    }
//
//    @PostMapping("/update-undertakingap")
//    @ResponseBody
//    public Issue updateUndertaking(String id, @RequestParam String statusund) throws Exception {
//        Integer idd = Integer.parseInt(id);
//        return service.updateUndertaking(idd, statusund);
//
//    }
//
//    @PostMapping("/update-payment-undertaking")
//    @ResponseBody
//    public Issue updatePaymentUP(String id, String desclist, @RequestParam(value = "deleteIds", required = false) String deleteIds, @RequestParam String statusvoucherun) throws Exception {
//        Integer idd = Integer.parseInt(id);
//        // Pass deleteIds to the service method
//        System.out.println(deleteIds);
//        return service.updatePaymentUP(idd, desclist, deleteIds, statusvoucherun);
//    }
//
//    @GetMapping("/paymentv-details/{id}")
//    public ResponseEntity<CommonResponse> getPayment(@PathVariable Integer id) throws Exception {
//        CommonResponse response = new CommonResponse("Success!", service.getPayment(id), 200);
//        return new ResponseEntity<>(response, HttpStatus.OK);
//    }
//
//    @PostMapping("/update-payvoucher")
//    @ResponseBody
//    public Issue updateVoucher(String id, @RequestParam String statusvoucher) throws Exception {
//        Integer idd = Integer.parseInt(id);
//        return service.updateVoucher(idd, statusvoucher);
//
//    }
}
