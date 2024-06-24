/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Accelution.ims;

import Accelution.ims.controllers.HttpSessionAuditorAware;
import jakarta.servlet.http.HttpSession;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.domain.AuditorAware;
import org.springframework.data.jdbc.repository.config.EnableJdbcAuditing;

/**
 *
 * @author Chirantha Prasad
 */
@Configuration
@EnableJdbcAuditing(auditorAwareRef = "httpSessionAuditorAware")
public class Config {

    @Bean
    public AuditorAware<Integer> auditorAware(HttpSession session) {
        return new HttpSessionAuditorAware(session);
    }

}
