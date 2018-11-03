package net.wanhe.service.impl;

import net.wanhe.mapper.StudentMapper;
import net.wanhe.model.Student;
import net.wanhe.service.StudentServiceI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by chenhuan on 2018/10/11.
 */
@Service("studentService")
public class StudentServiceImpl implements StudentServiceI {
    @Autowired
    private StudentMapper studentMapper;

    @Override
    public void addStudent(Student student) {
        try {
            studentMapper.addStudent(student);
        } catch (Exception e) {
            throw new RuntimeException("数据库查询异常");
        }
    }

    @Override
    public void deleteStudent(Integer id) {
        try {
            studentMapper.deleteStudent(id);
        } catch (Exception e) {
            throw new RuntimeException("数据库查询异常");
        }
    }

    @Override
    public void updateStudent(Student student) {
        try {
            studentMapper.updateStudent(student);
        } catch (Exception e) {
            throw new RuntimeException("数据库查询异常");
        }
    }

    @Override
    public Student getStudentById(Integer id) {
        Student student = null;
        try {
            student = studentMapper.getStudentById(id);
        } catch (Exception e) {
            throw new RuntimeException("数据库查询异常");
        }
        return student;
    }

    @Override
    public List<Student> getAllStudents(String name) {
        List<Student> students = null;
        try {
            students = studentMapper.getAllStudents(name);
        } catch (Exception e) {
            throw new RuntimeException("数据库查询异常");
        }
        return students;
    }
}
