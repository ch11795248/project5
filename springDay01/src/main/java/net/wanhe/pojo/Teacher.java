package net.wanhe.pojo;

import org.springframework.stereotype.Component;

/**
 * Created by 59611 on 2018/9/22.
 */
@Component(value = "teacher")
public class Teacher {
    private Integer id;
    private String name;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Teacher(Integer id, String name) {

        this.id = id;
        this.name = name;
    }

    public Teacher() {

    }
}
