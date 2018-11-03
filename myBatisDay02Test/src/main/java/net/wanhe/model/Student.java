package net.wanhe.model;

import java.io.Serializable;

/**
 * Created by chenhuan on 2018/10/9.
 */
public class Student implements Serializable{
    private Integer id;
    private String name;
    private Integer classId;

    public Student() {
    }

    public Student(Integer id, String name, Integer classId) {
        this.id = id;
        this.name = name;
        this.classId = classId;
    }

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

    public Integer getClassId() {
        return classId;
    }

    public void setClassId(Integer classId) {
        this.classId = classId;
    }

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", classId=" + classId +
                '}';
    }
}
