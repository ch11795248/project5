package net.wanhe.mapper;

import net.wanhe.model.Student;

import java.util.List;

/**
 * Created by chenhuan on 2018/10/10.
 */
public interface StudentMapper {
    void addStudent(Student student);

    void deleteStudent(Integer id);

    void updateStudent(Student student);

    Student getStudentById(Integer id);

    List<Student> getAllStudents();
}
