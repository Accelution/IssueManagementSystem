/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Accelution.ims.repo;

import Accelution.ims.dto.SlimSelectDTO;
import Accelution.ims.model.Company;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 *
 * @author cpm.999cc
 */
@Repository
public interface CompanyRepo extends CrudRepository<Company, Integer> {

//    @Query("SELECT p.id,(SELECT `name` FROM `hris_new`.`department` WHERE `id` = p.`subtype`) as `subtype`,p.`name`,p.`link` FROM `forms` p JOIN `hris_new`.`employee` e ON p.`subtype`=e.`department` JOIN  `hris_new`.`user` u  ON u.`employee_id`=e.id WHERE u.id=:userId AND p.`status`='active'")
//    Iterable<Types> findByStatus(@Param("userId") Integer userId);
    @Query("SELECT p.`id`,(SELECT `name` FROM `hris_new`.`department` WHERE `id` = p.`subtype`) AS `subtype`,p.`name`,p.`link`,p.`status` FROM `forms` p WHERE `status`='active'")
    Iterable<Company> findByStatus(String status);

    @Query("SELECT m.id as value, m.name as text FROM modules m WHERE m.system = :systems AND m.name LIKE :search AND m.status = 'active'")
    Iterable<SlimSelectDTO> getSelectMod(@Param("search") String search, @Param("systems") String systems);

    @Query(
            "select s.id as value,s.system as text from `company` c cross join json_table(c.systems,'$[*]' COLUMNS (`system` int PATH '$[0]'))j  join `systems` s on j.system=s.id WHERE c.id = :company")
    Iterable<SlimSelectDTO> getSelect(@Param("search") String search, @Param("company") String company);

    @Query(
            "SELECT s.id AS VALUE,s.department AS TEXT FROM `company` c CROSS JOIN JSON_TABLE(c.departments,'$[*]' COLUMNS (`department` INT PATH '$[0]'))j  JOIN `departments` s ON j.department=s.id WHERE c.id = :company")
    Iterable<SlimSelectDTO> getSelectDep(@Param("search") String search, @Param("company") String company);

    @Query("SELECT `id` AS `value`, `name` AS `text` FROM `company`")
    Iterable<SlimSelectDTO> getCompanyselect(@Param("search") String search);

    @Query("SELECT `id` AS `value`, `type` AS `text` FROM `access_type`")
    Iterable<SlimSelectDTO> getAccType(@Param("search") String search);
}
