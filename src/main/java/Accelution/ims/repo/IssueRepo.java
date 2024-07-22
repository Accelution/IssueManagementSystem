/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Accelution.ims.repo;

import Accelution.ims.dto.SlimSelectDTO;
import Accelution.ims.model.Issue;
import java.util.List;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 *
 * @author cpm.999cc
 */
@Repository
public interface IssueRepo extends CrudRepository<Issue, Integer> {

    Iterable<Issue> findByStatus(String status);

    Iterable<Issue> findByIssue(Integer id);

    List<Issue> findByIssueAndStatus(Integer id, String status);

    public Object findById(String deleteId);

    @Query("SELECT `id` AS `value`, `name` AS `text` FROM `users`")
    Iterable<SlimSelectDTO> getStatus(@Param("search") String search);

    @Query("SELECT `id` AS `value`, `type` AS `text` FROM `priority`")
    Iterable<SlimSelectDTO> getPrio(@Param("search") String search);

    @Query("SELECT COUNT(*) FROM issues WHERE `status` = 'Approval Pending' AND "
            + "(:companyId IS NULL OR `company` = :companyId) AND "
            + "(:departmentId IS NULL OR `department` = :departmentId) AND "
            + "(:userId IS NULL OR `ent_by` = :userId)")
    Long countByStatusAppr(@Param("companyId") String companyId,
            @Param("departmentId") String departmentId,
            @Param("userId") Integer userId);

    @Query("SELECT COUNT(*) FROM issues WHERE `status` = 'Queue' AND "
            + "(:companyId IS NULL OR `company` = :companyId) AND "
            + "(:departmentId IS NULL OR `department` = :departmentId) AND "
            + "(:userId IS NULL OR `ent_by` = :userId)")
    Long countByStatusQue(@Param("companyId") String companyId,
            @Param("departmentId") String departmentId,
            @Param("userId") Integer userId);

    @Query("SELECT COUNT(*) FROM issues WHERE `status` = 'In Progress' AND "
            + "(:companyId IS NULL OR `company` = :companyId) AND "
            + "(:departmentId IS NULL OR `department` = :departmentId) AND "
            + "(:userId IS NULL OR `ent_by` = :userId)")
    Long countByStatusInpro(@Param("companyId") String companyId,
            @Param("departmentId") String departmentId,
            @Param("userId") Integer userId);

    @Query("SELECT COUNT(*) FROM issues WHERE `status` = 'Development Pending' AND "
            + "(:companyId IS NULL OR `company` = :companyId) AND "
            + "(:departmentId IS NULL OR `department` = :departmentId) AND "
            + "(:userId IS NULL OR `ent_by` = :userId)")
    Long countByStatusDev(@Param("companyId") String companyId,
            @Param("departmentId") String departmentId,
            @Param("userId") Integer userId);

    @Query("SELECT COUNT(*) FROM issues WHERE `status` = 'QA Pending' AND "
            + "(:companyId IS NULL OR `company` = :companyId) AND "
            + "(:departmentId IS NULL OR `department` = :departmentId) AND "
            + "(:userId IS NULL OR `ent_by` = :userId)")
    Long countByStatusQa(@Param("companyId") String companyId,
            @Param("departmentId") String departmentId,
            @Param("userId") Integer userId);

    @Query("SELECT COUNT(*) FROM issues WHERE `status` = 'Deployment Pending' AND "
            + "(:companyId IS NULL OR `company` = :companyId) AND "
            + "(:departmentId IS NULL OR `department` = :departmentId) AND "
            + "(:userId IS NULL OR `ent_by` = :userId)")
    Long countByStatusDepl(@Param("companyId") String companyId,
            @Param("departmentId") String departmentId,
            @Param("userId") Integer userId);

    @Query("SELECT COUNT(*) FROM issues WHERE `status` = 'Completed' AND "
            + "(:companyId IS NULL OR `company` = :companyId) AND "
            + "(:departmentId IS NULL OR `department` = :departmentId) AND "
            + "(:userId IS NULL OR `ent_by` = :userId)")
    Long countByStatusCompleted(@Param("companyId") String companyId,
            @Param("departmentId") String departmentId,
            @Param("userId") Integer userId);

    @Query("SELECT COUNT(*) FROM issues WHERE `status` = 'Closed' AND "
            + "(:companyId IS NULL OR `company` = :companyId) AND "
            + "(:departmentId IS NULL OR `department` = :departmentId) AND "
            + "(:userId IS NULL OR `ent_by` = :userId)")
    Long countByStatusClosed(@Param("companyId") String companyId,
            @Param("departmentId") String departmentId,
            @Param("userId") Integer userId);
}
