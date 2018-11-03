package net.wanhe.service.impl;

import com.github.pagehelper.PageInfo;
import net.wanhe.mapper.StudentMapper;
import net.wanhe.model.Student;
import net.wanhe.service.StudentServiceI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by chenhuan on 2018/10/10.
 */
@Service("studentService")
public class StudentServiceImpl implements StudentServiceI{
    @Autowired
    private StudentMapper studentMapper;

    @Override
    public void addStudent(Student student) {

    }

    @Override
    public void deleteStudent(Integer id) {

    }

    @Override
    public void updateStudent(Student student) {

    }

    @Override
    public Student getStudentById(Integer id) {
        return null;
    }

    @Override
    public PageInfo<Student> getAllStudents() {
        List<Student> students = studentMapper.getAllStudents();
        PageInfo<Student> pageInfo = new PageInfo<>(students);
        return pageInfo;
    }


}
