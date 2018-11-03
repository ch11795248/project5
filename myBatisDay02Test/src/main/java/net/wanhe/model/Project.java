package net.wanhe.model;

import java.io.Serializable;

/**
 * Created by chenhuan on 2018/10/9.
 */
public class Project implements Serializable {
    private Integer id;
    private String name;
    private Integer student_id;

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

    public Integer getStudent_id() {
        return student_id;
    }

    public void setStudent_id(Integer student_id) {
        this.student_id = student_id;
    }

    @Override
    public String toString() {
        return "Project{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", student_id=" + student_id +
                '}';
    }
}
