package net.wanhe.test;

import net.wanhe.pojo.Person;
import net.wanhe.pojo.Student;
import net.wanhe.pojo.Teacher;
import net.wanhe.service.StudentServiceI;
import net.wanhe.service.UserService;
import net.wanhe.service.impl.MessageServcie;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.io.File;
import java.util.*;

/**
 * Created by 59611 on 2018/9/22.
 */
@ComponentScan
public class Test {
    @org.junit.Test
    public void test() {
        ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
        Student student = (Student) ctx.getBean("student");
        System.out.println(student);
    }

    @org.junit.Test
    public void TestDemo() {
        ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        UserService userSrevice = (UserService) ctx.getBean("userService");
        userSrevice.test();
    }

    @org.junit.Test
    public void TestDemo1() {
        ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        Person person = (Person) ctx.getBean("person");
        System.out.println(person);

    }

    @org.junit.Test
    public void TestAnno() {
        ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        Teacher teacher = (Teacher) ctx.getBean("teacher");
        System.out.println(teacher);
    }

    @org.junit.Test
    public void TestAutoWired() {
        ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        StudentServiceI studentServiceI = (StudentServiceI) ctx.getBean("studentServiceI");
        studentServiceI.syso();
    }

    @org.junit.Test
    public void componentScanTest() {
        AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(Test.class);
        MessageServcie servcie = context.getBean(MessageServcie.class);
        System.out.println(servcie);
    }

    @org.junit.Test
    public void mapTest() {
        Map<String, String> map = new HashMap<>();
        map.put("1", "java");
        map.put("2", "and");
        map.put("3", "mysql");
//        for(String key:map.keySet()){
//            System.out.println(key+map.get(key));
//        }
//        for(Map.Entry<String,String> entry:map.entrySet()){
//            System.out.println(entry.getKey()+entry.getValue());
//        }
//        Iterator<String> it = map.keySet().iterator();
//        while (it.hasNext()){
//            String key = it.next();
//            System.out.println(key+map.get(key));
//        }
//        Iterator<Map.Entry<String, String>> it = map.entrySet().iterator();
//        while(it.hasNext()){
//            Map.Entry<String, String> entry = it.next();
//            System.out.println(entry.getKey()+entry.getValue());
//        }
        for (String value : map.values()) {
            System.out.println(value);
        }
    }

    @org.junit.Test
    public void listSortDemo() {
        List<Integer> list1 = new ArrayList<>();
        list1.add(1);
        list1.add(2);
        list1.add(3);
        List<Integer> list2 = new ArrayList<>();
        list2.add(2);
        list2.add(3);
        list2.add(5);
//        list1.removeAll(list2);
//        list1.addAll(list2);
//        System.out.println(list1);
        Set<Integer> set = new HashSet<>();
        set.addAll(list1);
        set.addAll(list2);
        List<Integer> list3 = new ArrayList<>(set);
        System.out.println(list3);
    }

    @org.junit.Test
    public void getAllFileName() {
        outputAllFlieName("D:\\apache-tomcat-7.0.81");
    }

    public void outputAllFlieName(String file) {
        if (file == null) {
            return;
        }
        File[] listFiles = new File(file).listFiles();
        for (File f : listFiles) {
            if (f.isFile()) {
                System.out.println(f.getName());
            }
            if (f.isDirectory()) {
                outputAllFlieName(f.getPath());
            }
        }
    }

    @org.junit.Test
    public void TestBuffer() {
        String str = "asdfsadf";
        StringBuffer br = new StringBuffer(str);
        String newStr = br.reverse().toString();
        System.out.println(newStr);
    }

    public static void main(String[] args) {
        Thread thread = new Thread("张飞"){
            @Override
            public void run() {
                while (true) {
                    try {
                        Thread.sleep(100);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                    System.out.println(Thread.currentThread().getName());
                }
            }
        };

        Thread thread2 = new Thread(new Runnable() {
            @Override
            public void run() {
                while (true) {
                    try {
                        Thread.sleep(200);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                    System.out.println(Thread.currentThread().getName());
                }
            }
        },"关于");

        thread.start();

        thread2.start();
    }
}
