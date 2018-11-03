package net.wanhe.controller;

import com.github.pagehelper.PageInfo;
import net.wanhe.model.Student;
import net.wanhe.service.StudentServiceI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by chenhuan on 2018/10/10.
 */
@Controller
@RequestMapping("student")
public class StudentController {

    @Autowired
    private StudentServiceI studentService;

    @RequestMapping
    public String getAllStudents(){
        PageInfo<Student> pageInfo = studentService.getAllStudents();
        return "success";
    }
}
