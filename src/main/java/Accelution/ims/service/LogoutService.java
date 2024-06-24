/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Accelution.ims.service;

import Accelution.ims.repo.UserRepo;
import Accelution.ims.model.Users;
;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class LogoutService {

    @Autowired
    UserRepo UserRepo;

    public Users Logout(String username) {
        return UserRepo.findByUsername(username).orElse(null);
    }

}
