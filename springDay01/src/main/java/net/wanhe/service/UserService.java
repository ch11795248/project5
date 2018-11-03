package net.wanhe.service;

import net.wanhe.dao.UserDaoImpl;

/**
 * Created by 59611 on 2018/9/22.
 */
public class UserService {
    private UserDaoImpl userDao;

    public void setUserDao(UserDaoImpl userDao) {
        this.userDao = userDao;
    }

    public void test(){
        System.out.println("service...");
        userDao.test();
    }
}
