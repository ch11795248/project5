package net.wanhe.controllor;

import net.wanhe.dao.StudentDaoI;
import net.wanhe.dao.StudentDaoImpl;
import net.wanhe.pojo.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.List;

/**
 * Created by 59611 on 2018/9/21.
 */
@WebServlet("/StudentServlet")
public class StudentServlet extends HttpServlet {
    StudentDaoI studentDaoI = new StudentDaoImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String methodName = request.getParameter("method");
        try {
            Method method = getClass().getDeclaredMethod(methodName,HttpServletRequest.class, HttpServletResponse.class);
            method.setAccessible(true);
            method.invoke(this, request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    //查询所有学生
    protected void getAllStudent(HttpServletRequest request,HttpServletResponse response){
        List<Student> allStudents = studentDaoI.getAllStudents();
        request.getSession().setAttribute("students",allStudents);
        try {
            response.sendRedirect("/student.jsp");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //增加学生
    protected void addStudent(HttpServletRequest request,HttpServletResponse response){
        String name = request.getParameter("name");
        String age = request.getParameter("age");
        Student student = new Student();
        if(name!=null && !"".equals(name)){
            student.setName(name);
        }
        if(age!=null && !"".equals(age)){
            student.setAge(Integer.parseInt(age));
        }
        //调用增加学生的方法
        studentDaoI.addStudent(student);
        //跳转查询所有学生的页面
        try {
            response.sendRedirect("/StudentServlet?method=getAllStudent");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //根据学号查询学生的详细信息
    protected void updateDetailById(HttpServletRequest request,HttpServletResponse response){
        String id = request.getParameter("id");
        if(id!=null && !"".equals(id)){
            Student student = studentDaoI.getStudentBuId(Integer.parseInt(id));
            request.getSession().setAttribute("student",student);
            request.getSession().setAttribute("id",id);
        }
        //跳转查询所有学生的页面
        try {
            response.sendRedirect("/updateStudent.jsp");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //修改学生
    protected void updateStudent(HttpServletRequest request,HttpServletResponse response){
        String name = request.getParameter("name");
        String age = request.getParameter("age");
        String id = request.getParameter("id");
        Student student = new Student();
        if(id!=null && !"".equals(id)){
            student.setId(Integer.parseInt(id));
        }
        if(name!=null && !"".equals(name)){
            student.setName(name);
        }
        if(age!=null && !"".equals(age)){
            student.setAge(Integer.parseInt(age));
        }
        studentDaoI.updateStudent(student);
        //跳转查询所有学生的页面
        try {
            response.sendRedirect("/StudentServlet?method=getAllStudent");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //删除学生
    protected void deleteStudent(HttpServletRequest request,HttpServletResponse response){
        String id = request.getParameter("id");
        if(id!=null && !"".equals(id)){
            studentDaoI.deleteStudent(Integer.parseInt(id));
        }
        //跳转查询所有学生的页面
        try {
            response.sendRedirect("/StudentServlet?method=getAllStudent");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
