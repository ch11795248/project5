package net.wanhe.controller;

import net.wanhe.model.Student;
import net.wanhe.service.StudentServiceI;
import net.wanhe.util.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

/**
 * Created by chenhuan on 2018/9/29.
 */
@Controller
@RequestMapping("student")
public class StudentController {

    @Autowired
    private StudentServiceI studentService;

    @RequestMapping
    public String index(Map map) {
        map.put("students",studentService.queryAllStudent());
        return "student";

    }

    @RequestMapping("jumpToAdd")
    public String jumpToAdd(){
        return "addStudent";
    }

    @RequestMapping("add")
    @ResponseBody
    public JsonResult add(Student student) {
        JsonResult jsonResult = new JsonResult();
        studentService.addStudent(student);
        jsonResult.setStatus(200);
        jsonResult.setMessage("增加成功");
        return jsonResult;
    }

}
