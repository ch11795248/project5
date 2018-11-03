package net.wanhe.util;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.InputStream;

/**
 * Created by chenhuan on 2018/9/30.
 */
public class
MyBatisUtil {
    private static SqlSessionFactory sqlSessionFactory;
    private static ThreadLocal<SqlSession> threadLocal = new ThreadLocal<>();

    static {
        InputStream inputStream = MyBatisUtil.class.getClassLoader().getResourceAsStream("sqlMappingConfig.xml");
        sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
    }

    //获取连接
    public static SqlSession getSqlSession(){
        SqlSession sqlSession = threadLocal.get();
        if(sqlSession==null){
            sqlSession = sqlSessionFactory.openSession();
            threadLocal.set(sqlSession);
        }
        return sqlSession;
    }

    //关闭连接
    public static void closeSession(){
        SqlSession sqlSession = threadLocal.get();
        if (sqlSession!=null){
            sqlSession.close();
            threadLocal.remove();
        }
    }
}
