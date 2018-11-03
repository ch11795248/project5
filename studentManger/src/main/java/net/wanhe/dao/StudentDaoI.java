package net.wanhe.dao;

import net.wanhe.pojo.Student;

import java.util.List;

/**
 * Created by 59611 on 2018/9/21.
 */
public interface StudentDaoI {
    //查询所有学生
    List<Student> getAllStudents();

    //增加学生
    void addStudent(Student s);

    //根据学号查询学生的信息
    Student getStudentBuId(int id);

    //修改学生
    void updateStudent(Student s);

    //根据学号删除学生
    void deleteStudent(int id);
}
