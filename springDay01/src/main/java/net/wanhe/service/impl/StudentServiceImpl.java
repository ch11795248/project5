package net.wanhe.service.impl;

import net.wanhe.dao.StudentDaoI;
import net.wanhe.service.StudentServiceI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * Created by 59611 on 2018/9/22.
 */
@Component("studentServiceI")
public class StudentServiceImpl implements StudentServiceI {
    @Autowired
    private StudentDaoI studentDaoI;
    @Override
    public void syso() {
        System.out.println("我是service");
        studentDaoI.syso();
    }
}
