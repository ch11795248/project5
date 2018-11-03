package net.wanhe.dao.impl;

import net.wanhe.dao.StudentDaoI;
import net.wanhe.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by chenhuan on 2018/9/29.
 */
@Repository
public class StudentDaoImpl implements StudentDaoI {
    @Autowired
    private JdbcTemplate jt;
    private RowMapper<Student> rm = new BeanPropertyRowMapper<>(Student.class);

    @Override   //增加学生
    public void addStudent(Student student) {
        String sql = "INSERT INTO student VALUES(NULL,?,?)";
        jt.update(sql);
    }

    @Override   //删除学生
    public void deleteStudent(Integer id) {
        String sql = "DELETE FROM student WHERE id=?";
        jt.update(sql);
    }

    @Override   //修改学生
    public void updateStudent(Student student) {
        String sql = "UPDATE student SET NAME=?,age=? WHERE id=?";
        jt.update(sql);
    }

    @Override   //查询所有学生
    public List<Student> queryAllStudent() {
        String sql = "select * from student";
        List<Student> students = jt.query(sql, rm);
        return students;
    }

    @Override   //根据学号查询学生
    public Student getStudentById(Integer id) {
        String sql = "SELECT * FROM student WHERE id=?";
        Student student = jt.queryForObject(sql, rm);
        return student;
    }
}
