/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Accelution.ims.controllers;

import Accelution.ims.datatable.DataTableRequest;
import Accelution.ims.datatable.DataTablesResponse;
import Accelution.ims.dto.SystemDto;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
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
import org.springframework.web.multipart.MultipartHttpServletRequest;
import Accelution.ims.model.System;
import Accelution.ims.model.Modules;
import Accelution.ims.service.SystemService;
import java.util.ArrayList;

@RestController
@RequestMapping("/system")
public class SystemController {

    @Autowired
    SystemService service;

    @PostMapping("/system-content")
    public DataTablesResponse<SystemDto> getSystems(@RequestBody DataTableRequest param) throws Exception {
        return service.getSystems(param);
    }

    @GetMapping("/content-details/{id}")
    public ResponseEntity<CommonResponse> getSystem(@PathVariable Integer id) throws Exception {
        CommonResponse response = new CommonResponse("Success!", service.getSystem(id), 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/deactivate-content")
    public ResponseEntity<CommonResponse> deactivateSystem(@RequestParam Integer id) throws Exception {
        service.deactivateSystem(id);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/reactivate-content")
    public ResponseEntity<CommonResponse> reactivateSystem(@RequestParam Integer id) throws Exception {
        service.reactivateSystem(id);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @GetMapping("/attach-content")
    public Iterable<System> getAllActiveAttatchments() {
        return service.getAllActiveAttatchments();
    }

    @GetMapping("/{id}")
    public ResponseEntity<CommonResponse> getSystems(@PathVariable Integer id) throws Exception {
        CommonResponse response = new CommonResponse("Success!", service.getSystems(id), 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @GetMapping("/attachment-details/{id}")
    public ResponseEntity<Map<String, Object>> getSystemsDetails(@PathVariable Integer id) {
        try {
            List<Modules> attachments = service.getActiveSystemssBySystemId(id);
            Map<String, Object> response = new HashMap<>();
            response.put("data", attachments);
            return ResponseEntity.ok(response);
        } catch (Exception e) {
            // Handle exception and return an error response
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
        }
    }

    @PostMapping("/save-attachment")
    @ResponseBody
    public System uploadSystems(@RequestParam("system") String system,
            @RequestParam("desclist") String desclist) throws Exception {
        return service.saveSystems(system, desclist);
    }

    @PostMapping("/update-attachment")
    @ResponseBody
    public System updateSystems(String id, String system, String desclist, @RequestParam(value = "deleteIds", required = false) String deleteIds) throws Exception {
        Integer idd = Integer.parseInt(id);
        // Pass deleteIds to the service method
//        System.out.println(deleteIds);
        return service.updateSystems(idd, system, desclist, deleteIds);

    }

}
