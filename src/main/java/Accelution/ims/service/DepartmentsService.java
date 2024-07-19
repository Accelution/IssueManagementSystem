/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Accelution.ims.service;

import Accelution.ims.datatable.DataTableRepo;
import Accelution.ims.datatable.DataTableRequest;
import Accelution.ims.datatable.DataTablesResponse;
import Accelution.ims.dto.SlimSelectDTO;
import Accelution.ims.dto.DepartmentDto;
import Accelution.ims.model.Departments;
import Accelution.ims.repo.DepartmentRepo;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author cpm.999cc
 */
@Service
public class DepartmentsService {

    @Autowired
    private DataTableRepo<DepartmentDto> userDts;

    @Autowired
    DepartmentRepo reporr;

    public DataTablesResponse<DepartmentDto> getDepartment(DataTableRequest param) throws Exception {
        return userDts.getData(DepartmentDto.class, param, "SELECT x.`id`,x.`department`,x.`status`,(SELECT d.`name` FROM `users` d WHERE d.`id`=x.`ent_by`) AS `ent_by`,`ent_on`,(SELECT d.`name` FROM `users` d WHERE d.`id`=x.`mod_by`) AS `mod_by`,`mod_on` FROM `departments` X WHERE TRUE");

    }

    public Departments getDepartments(Integer id) throws Exception {
        Departments not = reporr.findById(id).get();
        return not;
    }

    public Departments deactivateDepartments(Integer id) throws Exception {
        Departments syst = reporr.findById(id).get();
        syst.setStatus("deactivate");
        syst = reporr.save(syst);
        return syst;
    }

    public Departments reactivateDepartments(Integer id) throws Exception {
        Departments systems = reporr.findById(id).get();
        systems.setStatus("active");
        systems = reporr.save(systems);
        return systems;
    }

    public Departments saves(String department) throws Exception {
        Departments system = new Departments();
        system.setDepartment(department);
        system.setStatus("active");
        system = reporr.save(system);

        return reporr.save(system);
    }

    public Departments updates(Integer id, String department) throws Exception {
        Departments system = reporr.findById(id).get();
        system.setDepartment(department);

        return reporr.save(system);
    }

//    public Iterable<Departments> findAllActiveImagess(Integer uid) {
//        return reporr.findByStatus(uid);
//
//    }
    public Iterable<Departments> findAllActiveImages() {
        return reporr.findByStatus("active");
    }

    public Iterable<SlimSelectDTO> getSelect(String search) {
        return reporr.getSelect("%" + search.trim() + "%");
    }
}
