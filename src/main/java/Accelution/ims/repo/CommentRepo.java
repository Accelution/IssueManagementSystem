/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Accelution.ims.repo;

import Accelution.ims.model.Comment;
import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author cpm.999cc
 */
@Repository
public interface CommentRepo extends CrudRepository<Comment, Integer> {

    Iterable<Comment> findByStatus(String status);

    Iterable<Comment> findByIssue(Integer id);

//    List<Comment> findByDhammaVideoAndStatus(Integer id, String status);
}
