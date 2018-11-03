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
 * Created by chenhuan on 2018/9/26.
 */
@Repository
public class StudengDaoImpl implements StudentDaoI {
    @Autowired
    private JdbcTemplate jdbcTemplate;
    private RowMapper<Student> rm = new BeanPropertyRowMapper<>(Student.class);

    @Override
    public List<Student> getAllStudent() {
        String sql = "select * from student";
        List<Student> students = jdbcTemplate.query(sql, rm);
        return students;
    }
}
