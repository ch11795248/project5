package net.wanhe.service;

import net.wanhe.model.Student;

import java.util.List;

/**
 * Created by chenhuan on 2018/10/11.
 */
public interface StudentServiceI {
    void addStudent(Student student);
    void deleteStudent(Integer id);
    void updateStudent(Student student);
    Student getStudentById(Integer id);
    List<Student> getAllStudents(String name);
}
