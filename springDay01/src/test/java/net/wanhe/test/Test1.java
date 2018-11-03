package net.wanhe.test;

import net.wanhe.pojo.Student;
import org.junit.Test;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/**
 * Created by chenhuan on 2018/10/2.
 */
public class Test1 {
    @Test
    public void test(){
        Student s1 = new Student(1,"1",22);
        Student s2 = new Student(2,"2",11);
        Student s3 = new Student(3,"3",16);
        List<Student> list = new ArrayList<>();
        list.add(s1);
        list.add(s2);
        list.add(s3);
        Collections.sort(list);
        System.out.println(list);
        Collections.sort(list, new StudentComparator());
    }
}

class StudentComparator implements Comparator<Student>{

    @Override
    public int compare(Student s1, Student s2) {
        if(s1.equals(s2)){
            return 0;
        }else if(s1.getAge()<s2.getAge()){
            return 1;
        }else {
            return -1;
        }
    }
}
