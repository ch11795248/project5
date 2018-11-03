package net.wanhe.controller;

import net.wanhe.model.Student;
import net.wanhe.service.StudentServiceI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

/**
 * Created by chenhuan on 2018/10/7.
 */
@Controller
@RequestMapping("student")
public class StudentController {
    @Autowired
    private StudentServiceI studentService;

    @RequestMapping
    public String showAll(Map map){
        List<Student> students = studentService.getAllStudents();
        map.put("students",students);
        return "student";
    }
}
