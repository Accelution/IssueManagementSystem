package Accelution.ims.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class GetPagesAccDTO {

    private Integer id;
    private Integer parent;
    private Integer level;
    private Integer odr;
    private String name;
    private String status;
    private String url;
}
