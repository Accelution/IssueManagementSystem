/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Accelution.ims.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import Accelution.ims.datatable.DataTableRepo;
import Accelution.ims.datatable.DataTableRequest;
import Accelution.ims.datatable.DataTablesResponse;
import Accelution.ims.dto.SystemAllDto;
import Accelution.ims.dto.ModulesDto;
import Accelution.ims.dto.SystemDto;
import Accelution.ims.model.Modules;
import Accelution.ims.repo.ModulesRepo;
import java.io.File;
import java.nio.file.Path;
import Accelution.ims.model.System;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.MultiValueMap;
import org.springframework.web.multipart.MultipartFile;
import static org.springframework.web.servlet.function.RequestPredicates.param;
import static org.springframework.web.servlet.function.RequestPredicates.path;
import Accelution.ims.repo.SystemRepo;
import java.util.HashMap;
import java.util.Optional;

/**
 *
 * @author L580
 */
@Service
public class SystemService {

    @Autowired
    private DataTableRepo<ModulesDto> unitDt;
    @Autowired
    private DataTableRepo<SystemDto> attDt;

    @Autowired
    private ModulesRepo moduleRepo;
    @Autowired
    private SystemRepo systemRepo;

    public DataTablesResponse<SystemDto> getSystems(DataTableRequest param) throws Exception {
        return attDt.getData(SystemDto.class, param, "SELECT x.`id`, x.`system`, x.`status`,(SELECT d.`name` FROM `users` d WHERE d.`id` = x.`ent_by`) AS `ent_by`,`ent_on`,(SELECT d.`name` FROM `users` d WHERE d.`id` = x.`mod_by`) AS `mod_by`,`mod_on` FROM `systems` X");

    }

    public Object getSystem(Integer id) throws Exception {
        System content = systemRepo.findById(id).get();
        List<Modules> videos = moduleRepo.findBySystemAndStatus(id, "active");
        Map<String, Object> data = new HashMap<>();
        data.put("content", content);
        data.put("videos", videos);
        return data;
    }

    private final ObjectMapper mapper = new ObjectMapper();

    public System deactivateSystem(Integer id) throws Exception {
        System syst = systemRepo.findById(id).get();
        syst.setStatus("deactivate");
        syst = systemRepo.save(syst);
        return syst;
    }

    public System reactivateSystem(Integer id) throws Exception {
        System systems = systemRepo.findById(id).get();
        systems.setStatus("active");
        systems = systemRepo.save(systems);
        return systems;
    }

    public Iterable<System> getAllActiveAttatchments() {
        return systemRepo.findByStatus("active");
    }

    public SystemAllDto getSystems(Integer id) throws Exception {
        System con = systemRepo.findById(id).get();
        Iterable<Modules> teamSystems = moduleRepo.findBySystemAndStatus(id, "active");

        SystemAllDto dto = new SystemAllDto();
//        dto.setSystem(teamSystems);
//        dto.setSystem(con.getSystem());
        return dto;
    }

    public List<Modules> getActiveSystemssBySystemId(Integer id) throws Exception {
        return moduleRepo.findBySystemAndStatus(id, "active");
    }

    public System saveSystems(String system, String desclist) throws Exception {
        System systems = new System();
        systems.setSystem(system);
        systems.setStatus("active");
        systems = systemRepo.save(systems);

        JsonNode fileList = mapper.readTree(desclist);
        for (int i = 0; i < fileList.size(); i++) {
            JsonNode fileItem = fileList.get(i);

            Modules module = new Modules();
            module.setSystem(systems.getId());
            module.setName(fileItem.get("name").asText());
            module.setStatus("active");
            module = moduleRepo.save(module);
//            system.out.println("module - " + module.getId());
            moduleRepo.save(module);
        }

        return systemRepo.save(systems);
    }

    public System updateSystems(Integer id, String system, String desclist, String deleteIds) throws Exception {
        try {
            // Find the existing system by ID
            System systems = systemRepo.findById(id).orElseThrow(() -> new Exception("System with ID " + id + " not found"));

            // Update the system's name
            systems.setSystem(system);

            // Deactivate modules based on deleteIds
            if (deleteIds != null && !deleteIds.isEmpty()) {
                deactivateModules(deleteIds);
            }

            // Update or add modules based on desclist
            if (desclist != null && !desclist.isEmpty()) {
                updateModules(systems, desclist);
            }

            // Save and return the updated system
            return systemRepo.save(systems);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("Failed to update system with modules", e);
        }
    }

    private void deactivateModules(String deleteIds) throws Exception {
        JsonNode toBeDeleted = mapper.readTree(deleteIds);
        for (JsonNode jsonNode : toBeDeleted) {
            int moduleId = Integer.parseInt(jsonNode.asText());
            Modules moduleToDelete = moduleRepo.findById(moduleId).orElseThrow(() -> new Exception("Module with ID " + moduleId + " not found"));
            moduleToDelete.setStatus("deactivate");
            moduleRepo.save(moduleToDelete);
        }
    }

    private void updateModules(System systems, String desclist) throws Exception {
        JsonNode fileList = mapper.readTree(desclist);
        for (int i = 0; i < fileList.size(); i++) {
            JsonNode fileItem = fileList.get(i);
            String fileName = fileItem.get("name").asText();

            Modules module = new Modules();
            module.setSystem(systems.getId());
            module.setName(fileName);
            module.setStatus("active");

            moduleRepo.save(module);
        }
    }

    private boolean containsSystemsId(String desclist, Integer moduleId) throws JsonProcessingException {
        JsonNode fileList = mapper.readTree(desclist);
        for (int i = 0; i < fileList.size(); i++) {
            JsonNode fileItem = fileList.get(i);
            Integer fileId = fileItem.get("fileId").asInt();
            if (fileId.equals(moduleId)) {
                return true;
            }
        }
        return false;
    }

//    private boolean containsSystemsId(String desclist, Integer moduleId) throws JsonProcessingException {
//        try {
//            JsonNode fileList = mapper.readTree(desclist);
//            for (int i = 0; i < fileList.size(); i++) {
//                JsonNode fileItem = fileList.get(i);
//
//                // Check if "fileId" exists in the JSON node and is not null
//                JsonNode fileIdNode = fileItem.get("fileId");
//                if (fileIdNode != null && !fileIdNode.isNull()) {
//                    Integer fileId = fileIdNode.asInt();
//                    if (fileId.equals(moduleId)) {
//                        return true;
//                    }
//                }
//            }
//        } catch (Exception e) {
//            // Handle the exception or log it
//            e.printStackTrace();
//        }
//        return false;
//    }
}
