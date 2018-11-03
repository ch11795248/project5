package net.wanhe.mapper;

import net.wanhe.model.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by chenhuan on 2018/10/11.
 */
public interface StudentMapper {
    void addStudent(Student student);
    void deleteStudent(Integer id);
    void updateStudent(Student student);
    Student getStudentById(Integer id);
    List<Student> getAllStudents(@Param("name") String name);
}
