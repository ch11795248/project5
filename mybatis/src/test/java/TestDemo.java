import net.wanhe.dao.StudentMapper;
import net.wanhe.model.Student;
import net.wanhe.util.MybatisUtil;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import java.io.InputStream;
import java.util.List;

/**
 * Created by chenhuan on 2018/10/1.
 */
public class TestDemo {
    @Test
    public void test(){
        InputStream inputStream = TestDemo.class.getClassLoader().getResourceAsStream("sqlMappingConfig.xml");
        SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        SqlSession sqlSession = sessionFactory.openSession();
        StudentMapper mapper = sqlSession.getMapper(StudentMapper.class);
        Student student = new Student("ggg",22);
        mapper.addStudent(student);
        sqlSession.commit();
        sqlSession.close();
    }

    public static void main(String[] args) {

    }

    @Test
    public void addStudent(){
        SqlSession session = MybatisUtil.getSession();
        StudentMapper mapper = session.getMapper(StudentMapper.class);
        mapper.addStudent(new Student("chenhuan",25));
        session.commit();
        MybatisUtil.close();
    }

    @Test
    public void deleteStudent(){
        SqlSession sqlSession = MybatisUtil.getSession();
        StudentMapper mapper = sqlSession.getMapper(StudentMapper.class);
        mapper.deleteStudent(66);
        sqlSession.commit();
        MybatisUtil.close();
    }

    @Test
    public void updateStudent(){
        SqlSession sqlSession = MybatisUtil.getSession();
        StudentMapper mapper = sqlSession.getMapper(StudentMapper.class);
        Student s = new Student(65,"张三",26);
        mapper.updateStudent(s);
        sqlSession.commit();
        MybatisUtil.close();
    }

    @Test
    public void getStudentById(){
        SqlSession sqlSession = MybatisUtil.getSession();
        StudentMapper mapper = sqlSession.getMapper(StudentMapper.class);
        Student s = mapper.getStudentById(65);
        System.out.println(s);
        MybatisUtil.close();
    }

    @Test
    public void getAllStudent(){
        SqlSession sqlSession = MybatisUtil.getSession();
        StudentMapper mapper = sqlSession.getMapper(StudentMapper.class);
        List<Student> students = mapper.getAllStudents();
        System.out.println(students);
        MybatisUtil.close();
    }
}
