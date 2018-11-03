package net.wanhe.dao;

import net.wanhe.RowMapper.StudentRowMapper;
import net.wanhe.exception.DataAccessException;
import net.wanhe.pojo.Student;
import net.wanhe.util.JDBCTemplate;

import java.util.List;

/**
 * Created by 59611 on 2018/9/21.
 */
public class StudentDaoImpl implements  StudentDaoI {
    JDBCTemplate jt = new JDBCTemplate();

    @Override   //查询所有学生
    public List<Student> getAllStudents() {
        String sql = "select * from student";
        List<Student> list = null;
        List<Student> students = null;
        try {
            students = jt.query(sql,new StudentRowMapper());
        } catch (DataAccessException e) {
            e.printStackTrace();
        }
        return students;
    }

    @Override   //增加学生
    public void addStudent(Student s) {
        String sql = "insert into student values(null,?,?)";
        try {
            jt.save(sql,s.getName(),s.getAge());
        } catch (DataAccessException e) {
            e.printStackTrace();
        }
    }

    @Override   //根据学号查询学生的信息
    public Student getStudentBuId(int id) {
        String sql = "select * from student where id=?";
        List<Student> list = null;
        try {
            list = jt.query(sql, new StudentRowMapper(), id);
        } catch (DataAccessException e) {
            e.printStackTrace();
        }
        return list.size()==0?null:list.get(0);
    }

    @Override   //修改学生的信息
    public void updateStudent(Student s) {
        String sql = "update student set name=?,age=? where id=?";
        try {
            jt.update(sql,s.getName(),s.getAge(),s.getId());
        } catch (DataAccessException e) {
            e.printStackTrace();
        }
    }

    @Override   //删除学生
    public void deleteStudent(int id) {
        String sql = "delete from student where id=?";
        try {
            jt.update(sql,id);
        } catch (DataAccessException e) {
            e.printStackTrace();
        }
    }

}
