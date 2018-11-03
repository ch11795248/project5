package net.wanhe.service;

import net.wanhe.model.Student;

import java.util.List;

/**
 * Created by chenhuan on 2018/9/29.
 */
public interface StudentServiceI {
    void addStudent(Student student);

    void deleteStudent(Integer id);

    void updateStudent(Student student);

    List<Student> queryAllStudent();

    Student getStudentById(Integer id);
}
