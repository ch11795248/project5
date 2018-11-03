package net.wanhe.util;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.InputStream;

/**
 * Created by chenhuan on 2018/10/1.
 */
public class MybatisUtil {
    private static SqlSessionFactory sqlSessionFactory;
    private static ThreadLocal<SqlSession> local;

    static {

        local = new ThreadLocal<>();
        InputStream inputStream = MybatisUtil.class.getClassLoader().getResourceAsStream("sqlMappingConfig.xml");
        sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

    }

    //获取连接
    public static SqlSession getSession(){
        SqlSession sqlSession = local.get();
        if(sqlSession==null){
            sqlSession = sqlSessionFactory.openSession();
            local.set(sqlSession);
        }
        return sqlSession;
    }

    //关闭连接
    public static void close(){
        SqlSession sqlSession = local.get();
        if(sqlSession!=null){
            sqlSession.close();
        }
        local.remove();
    }
}
