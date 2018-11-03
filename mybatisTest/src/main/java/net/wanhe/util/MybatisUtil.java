package net.wanhe.util;


import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.InputStream;

/**
 * Created by chenhuan on 2018/10/7.
 */
public class MybatisUtil {

    private static SqlSessionFactory sqlSessionFactory;
    private static ThreadLocal<SqlSession> local = new ThreadLocal<>();

    static {
        InputStream inputStream = MybatisUtil.class.getClassLoader().getResourceAsStream("sqlMappingConfig.xml");
        sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
    }

    public static SqlSession getSqlSession(){
        SqlSession sqlSession = local.get();
       if(sqlSession==null){
           sqlSession = sqlSessionFactory.openSession();
           local.set(sqlSession);
       }
       return sqlSession;
    }

    public static void close(){
        SqlSession sqlSession = local.get();
        if(sqlSession !=null){
            sqlSession.close();
        }
        local.remove();
    }
}
