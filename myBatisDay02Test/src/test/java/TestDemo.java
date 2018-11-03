import net.wanhe.dto.StudentDto;
import net.wanhe.mapper.ClassRoomMapper;
import net.wanhe.mapper.StudentMapper;
import net.wanhe.model.ClassRoom;
import net.wanhe.model.Student;
import net.wanhe.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

/**
 * Created by chenhuan on 2018/10/9.
 */
public class TestDemo {

    @Test
    public void test(){
        SqlSession sqlSession = MyBatisUtil.getSqlSession();
        StudentMapper mapper = sqlSession.getMapper(StudentMapper.class);
        StudentDto studentDto = mapper.getStudentById(1);
        System.out.println(studentDto);
        sqlSession.close();
    }

    @Test
    public void test2(){
        SqlSession sqlSession = MyBatisUtil.getSqlSession();
        ClassRoomMapper mapper = sqlSession.getMapper(ClassRoomMapper.class);
        ClassRoom classRoom = mapper.getClassRoomByClassId(1);
        System.out.println(classRoom);
        sqlSession.close();
    }
}
