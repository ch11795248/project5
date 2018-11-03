package net.wanhe.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import net.wanhe.constant.Page;
import net.wanhe.model.Student;
import net.wanhe.service.StudentServiceI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

/**
 * Created by chenhuan on 2018/10/11.
 */
@Controller
@RequestMapping("student")
public class StudentController {
    @Autowired
    private StudentServiceI studentService;

    @RequestMapping
    public String show(Map map, String name, Integer pageNum) {
        int pageNo;
        if (pageNum == null || "".equals(pageNum)) {
            pageNo = 1;
        } else {
            pageNo = pageNum;
        }
        PageHelper.startPage(pageNo, Page.PAGESIZE);
        List<Student> students = studentService.getAllStudents(name);
        PageInfo<Student> pageInfo = new PageInfo<>(students);
        map.put("pageInfo", pageInfo);
        map.put("name", name);
        return "student";
    }

    @RequestMapping("goToAdd")
    public String goToAdd(){
        return "addStudent";
    }

    @RequestMapping("add")
    public String addStudent(Student student){
        studentService.addStudent(student);
        return "redirect:/student";
    }

    @RequestMapping("goUpdate")
    public String getStudentById(Integer id,Map map){
        Student student = studentService.getStudentById(id);
        map.put("student",student);
        return "updateStudent";
    }

    @RequestMapping("update")
    public String updateStudent(Student student){
        studentService.updateStudent(student);
        return "redirect:/student";
    }

    @RequestMapping("delete")
    public String deleteStudent(Integer id){
        studentService.deleteStudent(id);
        return "redirect:/student";
    }
}
