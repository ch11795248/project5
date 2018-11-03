package net.wanhe.dao;

import net.wanhe.model.Student;

import java.util.List;

/**
 * Created by chenhuan on 2018/9/29.
 */
public interface StudentDaoI {
    void addStudent(Student student);

    void deleteStudent(Integer id);

    void updateStudent(Student student);

    List<Student> queryAllStudent();

    Student getStudentById(Integer id);
}
