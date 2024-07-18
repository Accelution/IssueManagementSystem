/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Accelution.ims.controllers;

import Accelution.ims.datatable.DataTableRequest;
import Accelution.ims.datatable.DataTablesResponse;
import Accelution.ims.dto.DepartmentDto;
import Accelution.ims.dto.SlimSelectDTO;
import Accelution.ims.service.DepartmentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
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
import Accelution.ims.model.Departments;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author cpm.999cc
 */
@RestController
@RequestMapping("/department")
public class DepartmentsController {

    @Autowired
    DepartmentsService service;

    @PostMapping("/departments")
    public DataTablesResponse<DepartmentDto> getDepartment(@RequestBody DataTableRequest param) throws Exception {
        return service.getDepartment(param);

    }

    @GetMapping("/department-load")
    public Iterable<Departments> getAllActiveImages() {
        return service.findAllActiveImages();
    }

    @GetMapping("/details/{id}")
    public Departments getDepartments(@PathVariable Integer id) throws Exception {
        return service.getDepartments(id);
    }

    @PostMapping("/deactivate-department")
    public ResponseEntity<CommonResponse> deactivateDepartments(@RequestParam Integer id) throws Exception {
        service.deactivateDepartments(id);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/reactivate-department")
    public ResponseEntity<CommonResponse> reactivateDepartments(@RequestParam Integer id) throws Exception {
        service.reactivateDepartments(id);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/saves")
    @ResponseBody
    public Departments uploads(MultipartHttpServletRequest req, HttpSession session) throws Exception {

        String department = req.getParameter("department");
        return service.saves(department);
    }

    @PostMapping("/updates")
    @ResponseBody
    public Departments updates(MultipartHttpServletRequest req, HttpSession session) throws Exception {
        Integer id = Integer.parseInt(req.getParameter("id"));
        String department = req.getParameter("department");
        return service.updates(id, department);
    }

    @PostMapping("/department-select")
    public Iterable<SlimSelectDTO> getSelect(@RequestParam String search) throws Exception {
        return service.getSelect(search);
    }

}
