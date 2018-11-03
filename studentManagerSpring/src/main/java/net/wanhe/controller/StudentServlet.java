package net.wanhe.controller;

import net.wanhe.model.Student;
import net.wanhe.service.StudentServiceI;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by chenhuan on 2018/9/26.
 */
@WebServlet("/StudentServlet")
public class StudentServlet extends HttpServlet {

    private StudentServiceI studentService;

    @Override
    public void init() throws ServletException {
        ServletContext servletContext = getServletContext();
        ApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(servletContext);
        studentService = (StudentServiceI) ctx.getBean("studentService");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Student> students = studentService.getAllStudent();
        System.out.println(students);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
