package net.wanhe.dao.impl;

import net.wanhe.dao.StudentDaoI;
import org.springframework.stereotype.Component;

/**
 * Created by 59611 on 2018/9/22.
 */
@Component("studentDaoI")
public class StudentDaoImpl implements StudentDaoI {
    @Override
    public void syso() {
        System.out.println("我是dao");
    }
}
