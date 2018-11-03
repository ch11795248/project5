package net.wanhe.service.impl;

import net.wanhe.dao.StudentDaoI;
import net.wanhe.model.Student;
import net.wanhe.service.StudentServiceI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by chenhuan on 2018/9/29.
 */
@Service
public class StudentServiceImpl implements StudentServiceI {

    @Autowired
    private StudentDaoI studentDao;

    @Override
    public void addStudent(Student student) {
        studentDao.addStudent(student);
    }

    @Override
    public void deleteStudent(Integer id) {
        studentDao.deleteStudent(id);
    }

    @Override
    public void updateStudent(Student student) {
        studentDao.updateStudent(student);
    }

    @Override
    public List<Student> queryAllStudent() {
        return studentDao.queryAllStudent();
    }

    @Override
    public Student getStudentById(Integer id) {
        return studentDao.getStudentById(id);
    }
}
