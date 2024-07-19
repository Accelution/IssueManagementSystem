/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Accelution.ims.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import Accelution.ims.datatable.DataTableRepo;
import Accelution.ims.datatable.DataTableRequest;
import Accelution.ims.datatable.DataTablesResponse;
import Accelution.ims.dto.GetPagesAccDTO;
import Accelution.ims.dto.GetPagesDTO;
import Accelution.ims.dto.GetSystemsDTO;
import Accelution.ims.dto.SlimSelectDTO;
import Accelution.ims.dto.UserDataTable;
import Accelution.ims.dto.UserTypeDataTable;
import Accelution.ims.model.User;
import Accelution.ims.model.UserType;
import Accelution.ims.repo.PageRepo;
import Accelution.ims.repo.SystemRepo;
import Accelution.ims.repo.UserRepo;
import Accelution.ims.repo.UserTypeRepo;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jdbc.core.mapping.AggregateReference;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    UserRepo userRepo;

    @Autowired
    PageRepo pageRepo;

    @Autowired
    UserTypeRepo userTypeRepo;

    @Autowired
    SystemRepo systemRepo;

    @Autowired
    private DataTableRepo<UserDataTable> userDt;
    @Autowired
    private DataTableRepo<UserTypeDataTable> userTypeDt;

    public DataTablesResponse<UserDataTable> getUsers(DataTableRequest param) throws Exception {
        return userDt.getData(UserDataTable.class, param, "SELECT `id`,`username`,`name`,(SELECT `name` FROM `user_type` WHERE `id`= u.`usertype`) AS `usertypes`,(SELECT d.`name` FROM `users` d WHERE d.`id`=u.`ent_by`) AS `ent_by`,`ent_on`,(SELECT d.`name` FROM `users` d WHERE d.`id`=u.`mod_by`) AS `mod_by`,`mod_on`,(SELECT `name` FROM `company` WHERE `id` = `company`) AS company,`status` FROM `users` u WHERE TRUE");
    }

    public DataTablesResponse<UserTypeDataTable> getUserType(DataTableRequest param) throws Exception {
        return userTypeDt.getData(UserTypeDataTable.class, param, "SELECT x.`id`,x.`name`,x.`status`,(SELECT d.`name` FROM `users` d WHERE d.`id`=x.`ent_by`) AS `ent_by`,`ent_on`,(SELECT d.`name` FROM `users` d WHERE d.`id`=x.`mod_by`) AS `mod_by`,`mod_on` FROM `user_type` X WHERE TRUE ");
    }
    @Autowired
    private JdbcTemplate jdbc;

    public Map<String, Object> getUser(Integer id) throws Exception {
        User user = userRepo.findById(id).orElseThrow(() -> new Exception("Issue not found"));

        Map<String, Object> companyName = jdbc.queryForMap("SELECT `name` as companyname FROM `company` WHERE `id` = ?", user.getCompany());
        user.setCompanyname((String) companyName.get("companyname"));
        Map<String, Object> depName = jdbc.queryForMap("SELECT `department` as departmentname FROM `departments` WHERE `id` = ?", user.getDepartment());
        user.setDepartmentname((String) depName.get("departmentname"));

        Map<String, Object> combinedData = new HashMap<>();
        combinedData.put("d1", companyName);
        combinedData.put("d2", depName);
        combinedData.put("obj", user);

        return combinedData;
    }

    public UserType saveUserType(String name, String pages) throws Exception {

        List<Integer> pageNumbers = Arrays.asList(new ObjectMapper().readValue(pages, Integer[].class));

        String pagesJson = new ObjectMapper().writeValueAsString(pageNumbers);

        UserType page = new UserType();
        page.setName(name);
        page.setPages(pagesJson);
        page.setStatus("active");

        page = userTypeRepo.save(page);

        return page;

    }

    public UserType updateUserType(Integer id, String name, String pages) throws Exception {

        List<Integer> pageNumbers = Arrays.asList(new ObjectMapper().readValue(pages, Integer[].class));

        String pagesJson = new ObjectMapper().writeValueAsString(pageNumbers);

        UserType page = userTypeRepo.findById(id).get();
        page.setName(name);
        page.setPages(pagesJson);
        page.setStatus("active");

        page = userTypeRepo.save(page);

        return page;

    }

    public User saveUser(String name, String username, String dashboard, String usertype, String company, String department, String access) throws Exception {
        User user = new User();
        user.setUsername(username);
        user.setName(name);
        user.setDashboard(dashboard);
        user.setUsertype(usertype);
        user.setCompany(company);
        user.setDepartment(department);
        user.setAccess(access);
        user.setStatus("active");
        user = userRepo.save(user);
        return user;
    }

    public User updateUser(Integer id, String name, String username, String dashboard, String usertype, String company, String department, String access) throws Exception {
        User user = userRepo.findById(id).get();
        user.setUsername(username);
        user.setName(name);
        user.setDashboard(dashboard);
        user.setUsertype(usertype);
        user.setCompany(company);
        user.setDepartment(department);
        user.setAccess(access);
        user = userRepo.save(user);
        return user;
    }

    public UserType deactivateUserType(Integer id) throws Exception {
        UserType utype = userTypeRepo.findById(id).get();
        utype.setStatus("deactivate");
        utype = userTypeRepo.save(utype);
        return utype;
    }

    public UserType reactivateUserType(Integer id) throws Exception {
        UserType utype = userTypeRepo.findById(id).get();
        utype.setStatus("active");
        utype = userTypeRepo.save(utype);
        return utype;
    }

    public User deactivateUser(Integer id) throws Exception {
        User user = userRepo.findById(id).get();
        user.setStatus("deactivate");
        user = userRepo.save(user);
        return user;
    }

    public User reactivateUser(Integer id) throws Exception {
        User user = userRepo.findById(id).get();
        user.setStatus("active");
        user = userRepo.save(user);
        return user;
    }

    public Iterable<SlimSelectDTO> getUserTypeIdAndName(String search) {
        return userTypeRepo.getIdAndName("%" + search.trim() + "%");
    }

    public Iterable<SlimSelectDTO> searchDashbaords(String search) {
        return userTypeRepo.getDash("%" + search.trim() + "%");
    }
//
//    public Iterable<SlimSelectDTO> getAdminTypeIdAndName(String search) {
//        return adminTypeRepo.getAdminTypeIdAndName("%" + search.trim() + "%");
//    }
//

    public GetPagesDTO getPage() {
//    public Iterable<Page> getPage() {
        return pageRepo.getPage();
    }

    public Iterable<GetPagesAccDTO> getPageAccess(Integer uid) {
//    public Iterable<Page> getPage() {
        return pageRepo.getPageAccess(uid);
    }

    public GetPagesDTO getSelectedPage(Integer id) {
//    public Iterable<Page> getPage() {
        return pageRepo.getSelectedPage(id);
    }

    public GetSystemsDTO getAllSystems() {
        return systemRepo.getSystemsCheck();
    }
}
