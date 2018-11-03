package net.wanhe.service;

import com.github.pagehelper.PageInfo;
import net.wanhe.model.Student;


/**
 * Created by chenhuan on 2018/10/10.
 */
public interface StudentServiceI {
    void addStudent(Student student);

    void deleteStudent(Integer id);

    void updateStudent(Student student);

    Student getStudentById(Integer id);

    PageInfo<Student> getAllStudents();
}
