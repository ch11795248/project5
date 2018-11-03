package net.wanhe.service.impl;

import net.wanhe.dao.StudentDaoI;
import net.wanhe.model.Student;
import net.wanhe.service.StudentServiceI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by chenhuan on 2018/9/26.
 */
@Service("studentService")
public class StudentServiceImpl implements StudentServiceI {
    @Autowired
    private StudentDaoI studentDao;

    @Override
    public List<Student> getAllStudent() {
        List<Student> students = null;
        try {
            students = studentDao.getAllStudent();
        } catch (Exception e) {
            throw new RuntimeException("数据库查询异常");
        }
        return students;
    }
}
