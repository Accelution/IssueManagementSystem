/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Accelution.ims.repo;

import Accelution.ims.model.Modules;
import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author cpm.999cc
 */
@Repository
public interface ModulesRepo extends CrudRepository<Modules, Integer> {

    Iterable<Modules> findByStatus(String status);

    Iterable<Modules> findBySystem(Integer id);

    List<Modules> findBySystemAndStatus(Integer id, String status);

    public Object findById(String deleteId);
}
