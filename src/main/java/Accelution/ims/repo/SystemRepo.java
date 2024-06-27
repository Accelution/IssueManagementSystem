/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Accelution.ims.repo;

import Accelution.ims.dto.GetPagesDTO;
import Accelution.ims.dto.GetSystemsDTO;
import Accelution.ims.model.System;
import java.util.List;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author cpm.999cc
 */
@Repository
public interface SystemRepo extends CrudRepository<System, Integer> {

    Iterable<System> findByStatus(String status);

    Iterable<System> findBySystem(Integer id);

    @Query("SELECT (SELECT JSON_ARRAYAGG(JSON_OBJECT( 'odr',`odr`,'id',`id`,'parent',`parent`,'name',`name`,'level',`level`,'url',`url`)) FROM `pages` WHERE `status`='active') AS `all_page`")
    GetSystemsDTO getSystemsCheck();

}
