package net.wanhe.dao;

import net.wanhe.model.Student;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by chenhuan on 2018/10/7.
 */
public interface StudentDaoI {
    void addStudent(Student student);

    void deleteStudent(Integer id);

    void updateStudent(Student student);

    Student getStudentById(Integer id);

    List<Student> getAllStudents();
}
