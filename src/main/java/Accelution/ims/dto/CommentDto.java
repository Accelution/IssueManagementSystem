/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Accelution.ims.dto;

import Accelution.ims.model.Comment;
import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 *
 * @author cpm.999cc
 */
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class CommentDto {

    public Integer id;
    public String issue;
    public String comment;
    public String path;
    public String com_type;
    public String status;
    public String ent_by;
    public String ent_on;
    public String mod_by;
    public String mod_on;

}
