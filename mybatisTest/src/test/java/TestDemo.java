import net.wanhe.dao.StudentMapper;
import net.wanhe.model.Student;
import net.wanhe.util.MybatisUtil;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

/**
 * Created by chenhuan on 2018/10/7.
 */
public class TestDemo {
    @Test
    public void test(){
        SqlSession sqlSession = MybatisUtil.getSqlSession();
        StudentMapper mapper = sqlSession.getMapper(StudentMapper.class);
        mapper.addStudent(new Student(1,"baichi",22));
        sqlSession.commit();
        MybatisUtil.close();
    }
}
