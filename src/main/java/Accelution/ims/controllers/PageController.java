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

    @GetMapping("/index")
    public String viewDashboard(HttpSession session) {
        String dashBoard = session.getAttribute("dashboard") + "";

        if (dashBoard != null) {
            switch (dashBoard) {
                case "1":
                    return "admin_dashbaord";
                case "2":
                    return "internal_dashbaord";
                case "3":
                    return "external_dashbaord";
                default:
                    return "login";
            }
        } else {

            return "login";
        }
    }

    @GetMapping("/home")
    public String home() {
        return "admin_dashbaord";
    }

    @GetMapping("/externl-user")
    public String external() {
        return "external_dashbaord";
    }

    @GetMapping("/internal-user")
    public String internal() {
        return "internal_dashbaord";
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

    @GetMapping("/Approval")
    public String approval() {
        return "approval";
    }

    @GetMapping("/Development")
    public String develop() {
        return "development";
    }

    @GetMapping("/In Progress")
    public String progress() {
        return "inprogress";
    }

    @GetMapping("/QA")
    public String qa() {
        return "qa";
    }

    @GetMapping("/Completed")
    public String complet() {
        return "completed";
    }

    @GetMapping("/Systems")
    public String systems() {
        return "system";
    }

    @GetMapping("/Companies")
    public String company() {
        return "company";
    }

    @GetMapping("/Departments")
    public String department() {
        return "department";
    }

    @GetMapping("/Deployment")
    public String deployment() {
        return "deployment";
    }

    @GetMapping("/Reset-Password")
    public String reset() {
        return "reset_password";
    }

    @GetMapping("/otp")
    public String otp() {
        return "otp";
    }

    @GetMapping("/changepw")
    public String changepw() {
        return "change_password";
    }

}
