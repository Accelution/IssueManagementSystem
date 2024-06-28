/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Accelution.ims.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class UserDataTable {

    public Integer id;
    public String username;
    public String name;
    public String usertype;
    public String company;

    public String ent_on;
    public String ent_by;
    public String mod_by;
    public String mod_on;
    public String status;

}
