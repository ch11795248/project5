package net.wanhe.test;

import com.alibaba.druid.support.json.JSONUtils;
import com.alibaba.fastjson.JSON;
import net.wanhe.pojo.Student;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by chenhuan on 2018/10/17.
 */
public class Teeee {
    @org.junit.Test
    public void aa(){
        List<Student> list = new ArrayList<>();
        Student s1 = new Student(1,"22",11);
        Student s2 = new Student(1,"22",11);
        Student s3 = new Student(1,"22",11);
        list.add(s1);
        list.add(s2);
        list.add(s3);
        System.out.println(JSON.toJSONString(list));
    }
}
