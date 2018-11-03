package net.wanhe.controller;

import net.wanhe.model.Student;
import net.wanhe.service.StudentServiceI;
import net.wanhe.util.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

/**
 * Created by chenhuan on 2018/10/2.
 */
@Controller
@RequestMapping("student")
public class StudentController {

    @Autowired
    private StudentServiceI studentService;

    @RequestMapping
    public String goToStudent(){
        return "student";
    }

    @RequestMapping("show")
    @ResponseBody
    public List<Student> showAll(){
        return studentService.getAllStudents();
    }

    @RequestMapping("goToAdd")
    public String add(){
        return "addStudent";
    }

    @RequestMapping("add")
    @ResponseBody
    public JsonResult addStudent(Student student){
        JsonResult jsonResult = new JsonResult();
        jsonResult.setStatus(200);
        jsonResult.setMessage("添加成功");
        studentService.addStudent(student);
        return jsonResult;
    }

    @RequestMapping("delete")
    public String deleteStudent(Integer id){
        studentService.deleteStudent(id);
        return "redirect:/student";
    }

    @RequestMapping("goToUpdate")
    public String update(Integer id,Map map){
        map.put("id",id);
        return "updateStudent";
    }

    @RequestMapping("update")
    @ResponseBody
    public JsonResult updateStudent(Student student){
        JsonResult jsonResult = new JsonResult();
        jsonResult.setStatus(200);
        jsonResult.setMessage("修改成功");
        studentService.updateStudent(student);
        return jsonResult;
    }
}
