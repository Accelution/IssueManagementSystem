/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Accelution.ims.controllers;

import Accelution.ims.datatable.DataTableRequest;
import Accelution.ims.datatable.DataTablesResponse;
import Accelution.ims.dto.CompanyDto;
import Accelution.ims.dto.SlimSelectDTO;
import Accelution.ims.service.CompanyService;
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
import Accelution.ims.model.Company;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author cpm.999cc
 */
@RestController
@RequestMapping("/company")
public class CompanyController {

    @Autowired
    CompanyService service;

    @PostMapping("/companys")
    public DataTablesResponse<CompanyDto> getCompany(@RequestBody DataTableRequest param) throws Exception {
        return service.getCompany(param);

    }

    @GetMapping("/company-load")
    public Iterable<Company> getAllActiveImages() {
        return service.findAllActiveImages();
    }

    @GetMapping("/details/{id}")
    public Company getCompanys(@PathVariable Integer id) throws Exception {
        return service.getCompanys(id);
    }

    @PostMapping("/deactivate-company")
    public ResponseEntity<CommonResponse> deactivateCompanys(@RequestParam Integer id) throws Exception {
        service.deactivateCompanys(id);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/reactivate-company")
    public ResponseEntity<CommonResponse> reactivateCompanys(@RequestParam Integer id) throws Exception {
        service.reactivateCompanys(id);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/saves")
    @ResponseBody
    public Company uploads(MultipartHttpServletRequest req, HttpSession session) throws Exception {

        String name = req.getParameter("name");
        return service.saves(name);
    }

    @PostMapping("/updates")
    @ResponseBody
    public Company updates(MultipartHttpServletRequest req, HttpSession session) throws Exception {
        Integer id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        return service.updates(id, name);
    }

    @PostMapping("/company-select")
    public Iterable<SlimSelectDTO> getSelect(@RequestParam String search) throws Exception {
        return service.getSelect(search);
    }

}
