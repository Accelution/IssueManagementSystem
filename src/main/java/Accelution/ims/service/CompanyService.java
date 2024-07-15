/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Accelution.ims.service;

import Accelution.ims.datatable.DataTableRepo;
import Accelution.ims.datatable.DataTableRequest;
import Accelution.ims.datatable.DataTablesResponse;
import Accelution.ims.dto.SlimSelectDTO;
import Accelution.ims.dto.CompanyDto;
import Accelution.ims.model.Company;
import Accelution.ims.repo.CompanyRepo;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author cpm.999cc
 */
@Service
public class CompanyService {

    @Autowired
    private DataTableRepo<CompanyDto> userDts;

    @Autowired
    CompanyRepo reporr;

    public DataTablesResponse<CompanyDto> getCompany(DataTableRequest param) throws Exception {
        return userDts.getData(CompanyDto.class, param, "SELECT x.`id`,x.`name`,x.`status`,(SELECT d.`name` FROM `users` d WHERE d.`id`=x.`ent_by`) AS `ent_by`,`ent_on`,(SELECT d.`name` FROM `users` d WHERE d.`id`=x.`mod_by`) AS `mod_by`,`mod_on` FROM `company` X WHERE TRUE");

    }

    public Company getCompanys(Integer id) throws Exception {
        Company not = reporr.findById(id).get();
        return not;
    }

    public Company deactivateCompanys(Integer id) throws Exception {
        Company syst = reporr.findById(id).get();
        syst.setStatus("deactivate");
        syst = reporr.save(syst);
        return syst;
    }

    public Company reactivateCompanys(Integer id) throws Exception {
        Company systems = reporr.findById(id).get();
        systems.setStatus("active");
        systems = reporr.save(systems);
        return systems;
    }

    public Company saves(String name, String email, String contact, String con_name, String con_email, String checkedSystemsJson) throws Exception {
        Company company = new Company();
        company.setName(name);
        company.setEmail(email);
        company.setContact(contact);
        company.setCon_name(con_name);
        company.setCon_email(con_email);
        company.setSystems(checkedSystemsJson); // Save the JSON string directly
        company.setStatus("active");

        // Save the company entity
        return reporr.save(company);
    }

    public Company updates(Integer id, String name, String email, String contact, String con_name, String con_email, String checkedSystemsJson) throws Exception {
        Company company = reporr.findById(id).orElseThrow(() -> new Exception("Company not found"));
        company.setName(name);
        company.setEmail(email);
        company.setContact(contact);
        company.setCon_name(con_name);
        company.setCon_email(con_email);
        company.setSystems(checkedSystemsJson); // Update the systems JSON
        return reporr.save(company);
    }

//    public Iterable<Companys> findAllActiveImagess(Integer uid) {
//        return reporr.findByStatus(uid);
//
//    }
    public Iterable<Company> findAllActiveImages() {
        return reporr.findByStatus("active");
    }

    public Iterable<SlimSelectDTO> getSelect(String search, String company) {
        return reporr.getSelect("%" + search.trim() + "%", company);
    }

    public Iterable<SlimSelectDTO> getSelectMod(String search, String systems) {
        return reporr.getSelectMod("%" + search.trim() + "%", systems);
    }

//    s
    public Iterable<SlimSelectDTO> getCompanyselect(String search) {
        return reporr.getCompanyselect("%" + search.trim() + "%");
    }

}
