package net.wanhe.test;
import net.wanhe.pojo.Stu;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by 59611 on 2018/9/25.
 */
public class BeanLifeTest {
    @Test
    public void Test(){
        ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:applicationContext-a.xml");
        Stu stu = (Stu) ctx.getBean("stu");
    }
}
