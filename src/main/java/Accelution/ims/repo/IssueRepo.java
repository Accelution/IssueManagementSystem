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

    @Query("SELECT COUNT(*) AS COUNT FROM issues WHERE `status` = 'Approval Pending'")
    Long countByStatusAppr();

    @Query("SELECT COUNT(*) AS COUNT FROM issues WHERE `status` = 'Queue'")
    Long countByStatusQue();

    @Query("SELECT COUNT(*) AS COUNT FROM issues WHERE `status` = 'In Progress'")
    Long countByStatusInpro();

    @Query("SELECT COUNT(*) AS COUNT FROM issues WHERE `status` = 'development Pending'")
    Long countByStatusDev();

    @Query("SELECT COUNT(*) AS COUNT FROM issues WHERE `status` = 'QA Pending'")
    Long countByStatusQa();

    @Query("SELECT COUNT(*) AS COUNT FROM issues WHERE `status` = 'Deployment Pending'")
    Long countByStatusDepl();

    @Query("SELECT COUNT(*) AS COUNT FROM issues WHERE `status` = 'Completed'")
    Long countByStatusCompleted();

    @Query("SELECT COUNT(*) AS COUNT FROM issues WHERE `status` = 'Closed'")
    Long countByStatusClosed();
}
