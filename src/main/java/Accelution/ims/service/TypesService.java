/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Accelution.ims.service;

import Accelution.ims.datatable.DataTableRepo;
import Accelution.ims.datatable.DataTableRequest;
import Accelution.ims.datatable.DataTablesResponse;
import Accelution.ims.dto.SlimSelectDTO;
import Accelution.ims.dto.TypeDto;
import Accelution.ims.model.Types;
import Accelution.ims.repo.TypeRepo;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author cpm.999cc
 */
@Service
public class TypesService {

    @Autowired
    private DataTableRepo<TypeDto> userDts;

    @Autowired
    TypeRepo reporr;

    public DataTablesResponse<TypeDto> getType(DataTableRequest param) throws Exception {
        return userDts.getData(TypeDto.class, param, "SELECT x.`id`,x.`name`,x.`status`,(SELECT d.`name` FROM `users` d WHERE d.`id`=x.`ent_by`) AS `ent_by`,`ent_on`,(SELECT d.`name` FROM `users` d WHERE d.`id`=x.`mod_by`) AS `mod_by`,`mod_on` FROM `issue_types` X WHERE TRUE");

    }

    public Types getTypes(Integer id) throws Exception {
        Types not = reporr.findById(id).get();
        return not;
    }

    public Types deactivateTypes(Integer id) throws Exception {
        Types syst = reporr.findById(id).get();
        syst.setStatus("deactivate");
        syst = reporr.save(syst);
        return syst;
    }

    public Types reactivateTypes(Integer id) throws Exception {
        Types systems = reporr.findById(id).get();
        systems.setStatus("active");
        systems = reporr.save(systems);
        return systems;
    }

    public Types saves(String name) throws Exception {
        Types system = new Types();
        system.setName(name);
        system.setStatus("active");
        system = reporr.save(system);

        return reporr.save(system);
    }

    public Types updates(Integer id, String name) throws Exception {
        Types system = reporr.findById(id).get();
        system.setName(name);

        return reporr.save(system);
    }

//    public Iterable<Types> findAllActiveImagess(Integer uid) {
//        return reporr.findByStatus(uid);
//
//    }
    public Iterable<Types> findAllActiveImages() {
        return reporr.findByStatus("active");
    }

    public Iterable<SlimSelectDTO> getSelect(String search) {
        return reporr.getSelect("%" + search.trim() + "%");
    }
}
