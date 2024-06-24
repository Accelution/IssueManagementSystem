/*
 * Click nbfs://nbhost/FacilityFileFacility/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/FacilityFileFacility/Templates/Classes/Class.java to edit this template
 */
package Accelution.ims.repo;

import Accelution.ims.dto.SlimSelectDTO;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import Accelution.ims.model.FacilityType;

/**
 *
 * @author chirantha
 */
@Repository
public interface FacilityTypeRepo extends CrudRepository<FacilityType, Integer> {

//    @Query("SELECT `id` AS `value`, `name` AS `text` FROM `loan`.`branch`")
//    Iterable<SlimSelectDTO> getStatus(@Param("search") String search);
    @Query("SELECT `id` AS `value`, `name` AS `text` FROM `users`")
    Iterable<SlimSelectDTO> getStatus(@Param("search") String search);

    @Query("SELECT `id` AS `value`, `type` AS `text` FROM `priority`")
    Iterable<SlimSelectDTO> getPrio(@Param("search") String search);

    @Query("SELECT `id` AS `value`, `description` AS `text` FROM `loan`.`product`")
    Iterable<SlimSelectDTO> getProduct(@Param("search") String search);

    @Query("SELECT `id` AS `value`, `name` AS `text` FROM `loan`.`branch`")
    Iterable<SlimSelectDTO> getBranches(@Param("search") String search);

}
