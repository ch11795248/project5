package net.wanhe.dto;

import net.wanhe.model.ClassRoom;
import net.wanhe.model.Project;
import net.wanhe.model.Student;

import java.io.Serializable;

/**
 * Created by chenhuan on 2018/10/9.
 */
public class StudentDto extends Student implements Serializable {
    private ClassRoom classRoom;
    private Project project;

    public ClassRoom getClassRoom() {
        return classRoom;
    }

    public void setClassRoom(ClassRoom classRoom) {
        this.classRoom = classRoom;
    }

    @Override
    public String toString() {
        return "StudentDto{" +
                "classRoom=" + classRoom +
                ", project=" + project +
                "} " + super.toString();
    }
}
