/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Accelution.ims.controllers;

import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author Chirantha Prasad
 */
@Controller
public class PageController {

    @GetMapping("/home")
    public String home() {
        return "home";
    }

    @GetMapping("/Issue-Types")
    public String types() {
        return "issue_type";
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @GetMapping("/Users")
    public String users() {
        return "users";
    }

    @GetMapping("/User-Types")
    public String userType() {
        return "user_type";
    }

    @GetMapping("/Queue")
    public String queue() {
        return "queue";
    }
}
