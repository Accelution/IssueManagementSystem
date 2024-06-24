/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Accelution.ims.controllers;

import Accelution.ims.datatable.DataTableRequest;
import Accelution.ims.datatable.DataTablesResponse;
import Accelution.ims.dto.TypeDto;
import Accelution.ims.dto.SlimSelectDTO;
import Accelution.ims.service.TypesService;
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
import Accelution.ims.model.Types;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author cpm.999cc
 */
@RestController
@RequestMapping("/type")
public class TypesController {

    @Autowired
    TypesService service;

    @PostMapping("/types")
    public DataTablesResponse<TypeDto> getType(@RequestBody DataTableRequest param) throws Exception {
        return service.getType(param);

    }

    @GetMapping("/type-load")
    public Iterable<Types> getAllActiveImages() {
        return service.findAllActiveImages();
    }

    @GetMapping("/details/{id}")
    public Types getTypes(@PathVariable Integer id) throws Exception {
        return service.getTypes(id);
    }

    @PostMapping("/deactivate-type")
    public ResponseEntity<CommonResponse> deactivateTypes(@RequestParam Integer id) throws Exception {
        service.deactivateTypes(id);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/reactivate-type")
    public ResponseEntity<CommonResponse> reactivateTypes(@RequestParam Integer id) throws Exception {
        service.reactivateTypes(id);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/saves")
    @ResponseBody
    public Types uploads(MultipartHttpServletRequest req, HttpSession session) throws Exception {

        String name = req.getParameter("name");
        return service.saves(name);
    }

    @PostMapping("/updates")
    @ResponseBody
    public Types updates(MultipartHttpServletRequest req, HttpSession session) throws Exception {
        Integer id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        return service.updates(id, name);
    }

    @PostMapping("/type-select")
    public Iterable<SlimSelectDTO> getSelect(@RequestParam String search) throws Exception {
        return service.getSelect(search);
    }

}
