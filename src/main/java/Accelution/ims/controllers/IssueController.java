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

@RestController
@RequestMapping("/issue")
public class IssueController {

    @Autowired
    IssueService service;

    @PostMapping("/issuetable-all")
    public DataTablesResponse<IssueDTO> getIssues(@RequestBody DataTableRequest param) throws Exception {
        return service.getIssues(param);
    }

    @PostMapping("/assignto")
    public Iterable<SlimSelectDTO> getStatus(@RequestParam String search) throws Exception {
        return service.getStatus(search);
    }

    @PostMapping("/priority")
    public Iterable<SlimSelectDTO> getPrio(@RequestParam String search) throws Exception {
        return service.getPrio(search);
    }

////    branch
//    @PostMapping("/issuetable-all-branches")
//    public DataTablesResponse<IssueDTO> getIssueBrnch(@RequestBody DataTableRequest param, HttpSession session) throws Exception {
//        return service.getIssuesBrnch(param, (Integer) session.getAttribute("uid"));
//    }
////Approver
//
//    @PostMapping("/issuetable-all-approver")
//    public DataTablesResponse<IssueDTO> getIssueApprove(@RequestBody DataTableRequest param, HttpSession session) throws Exception {
//        return service.getIssueApprove(param, (Integer) session.getAttribute("uid"));
//    }
//
//    @PostMapping("/issuetable-file-branch")
//    public DataTablesResponse<IssueDTO> getIssuefileBranch(@RequestBody DataTableRequest param, HttpSession session) throws Exception {
//        return service.getIssuefileBranch(param, (Integer) session.getAttribute("uid"));
//    }
//
//    @PostMapping("/issuetable-clearance-branch")
//    public DataTablesResponse<IssueDTO> getIssueclearanceBranch(@RequestBody DataTableRequest param, HttpSession session) throws Exception {
//        return service.getIssueclearanceBranch(param, (Integer) session.getAttribute("uid"));
//    }
//
//    @PostMapping("/issuetable-approve-branch")
//    public DataTablesResponse<IssueDTO> getIssueapprovalBranch(@RequestBody DataTableRequest param, HttpSession session) throws Exception {
//        return service.getIssueapprovalBranch(param, (Integer) session.getAttribute("uid"));
//    }
//
//    @PostMapping("/issuetable-payment-branch")
//    public DataTablesResponse<IssueDTO> getIssuepaymentBranch(@RequestBody DataTableRequest param, HttpSession session) throws Exception {
//        return service.getIssuepaymentBranch(param, (Integer) session.getAttribute("uid"));
//    }
//
//    @PostMapping("/issuetable-paymentua-branch")
//    public DataTablesResponse<IssueDTO> getIssuepaymentUABranch(@RequestBody DataTableRequest param, HttpSession session) throws Exception {
//        return service.getIssuepaymentUABranch(param, (Integer) session.getAttribute("uid"));
//    }
//
//    @PostMapping("/issuetable-completed-branch")
//    public DataTablesResponse<IssueDTO> getIssueCompletedBranch(@RequestBody DataTableRequest param, HttpSession session) throws Exception {
//        return service.getIssueCompletedBranch(param, (Integer) session.getAttribute("uid"));
//    }
//
//    @PostMapping("/issuetable-reject-branch")
//    public DataTablesResponse<IssueDTO> getIssueRejectBranch(@RequestBody DataTableRequest param, HttpSession session) throws Exception {
//        return service.getIssueRejectBranch(param, (Integer) session.getAttribute("uid"));
//    }
//
//    @PostMapping("/search-branch")
//    public Iterable<SlimSelectDTO> getBranches(@RequestParam String search) throws Exception {
//        return service.getBranches(search);
//    }
//
//    @PostMapping("/product")
//    public Iterable<SlimSelectDTO> getProduct(@RequestParam String search) throws Exception {
//        return service.getProduct(search);
//    }
    @PostMapping("/save")
    public ResponseEntity<CommonResponse> saveIssue(@RequestParam String issue_type, @RequestParam String priority, @RequestParam String comment, @RequestParam String assign, @RequestParam String type, HttpSession session) throws Exception {
        service.saveIssue(issue_type, priority, comment, assign, type, session);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/update-ack")
    public ResponseEntity<CommonResponse> updateIssue(@RequestParam Integer id, @RequestParam String statusque, @RequestParam(required = false) String reason) throws Exception {
        service.updateIssue(id, statusque, reason);
        CommonResponse response = new CommonResponse("Success!", 200);
        return ResponseEntity.ok(response);
    }

    @GetMapping("/details-all/{id}")
    public ResponseEntity<CommonResponse> details(@PathVariable Integer id) throws Exception {
        CommonResponse response = new CommonResponse("Success!", service.getIssueses(id), 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }
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

    @GetMapping("/count-all")
    public Long getcountAllStatus() {
        return service.countAllStatus();
    }

    @GetMapping("/count-acknopen")
    public Long getcountAcknoPendStatus() {
        return service.countAcknoPendStatus();
    }

    @GetMapping("/count-ackno")
    public Long getcountAcknoStatus() {
        return service.countAcknoStatus();
    }

    @GetMapping("/count-exception")
    public Long getcountExceptionsStatus() {
        return service.countExceptionsStatus();
    }

    @GetMapping("/count-undertaking")
    public Long getcountUndertakinStatus() {
        return service.countUndertakinStatus();
    }

    @GetMapping("/count-payment")
    public Long getcountPaymentStatus() {
        return service.countPaymentStatus();
    }

    @GetMapping("/count-completed")
    public Long getCountOfCompletedStatus() {
        return service.countCompletedStatus();
    }

    @GetMapping("/count-rejected")
    public Long getcountRejectedStatus() {
        return service.countRejectedStatus();
    }
}
