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
 * Created by chenhuan on 2018/10/2.
 */
@Repository
public class StudentDaoImpl implements StudentDaoI {
    @Autowired
    private JdbcTemplate jdbcTemplate;
    private RowMapper<Student> rm = new BeanPropertyRowMapper(Student.class);

    @Override   //增加学生
    public void addStudent(Student student) {
        String sql = "insert into student values(null,?,?)";
        jdbcTemplate.update(sql,student.getName(),student.getAge());
    }

    @Override   //删除学生
    public void deleteStudent(Integer id) {
        String sql = "delete from student where id=?";
        jdbcTemplate.update(sql,id);
    }

    @Override   //修改学生
    public void updateStudent(Student student) {
        String sql = "update student set name=?,age=? where id=?";
        jdbcTemplate.update(sql,student.getName(),student.getAge(),student.getId());
    }

    @Override   //根据学号查询一个学生
    public Student getStudentById(Integer id) {
        String sql = "select * from student where id=?";
        Student student = jdbcTemplate.queryForObject(sql, rm, id);
        return student;
    }

    @Override
    public List<Student> getAllStudents() {
        String sql = "select * from student";
        List<Student> students = jdbcTemplate.query(sql, rm);
        return students;
    }
}
