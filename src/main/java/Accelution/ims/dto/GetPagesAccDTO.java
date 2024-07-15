/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Accelution.ims.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 *
 * @author asus
 */
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class GetPagesAccDTO {

    private Integer id;
    private String parent;
    private String level;
    private String odr;
    private String name;
    private String status;
    private String url;
}
