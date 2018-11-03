package net.wanhe.service;

import net.wanhe.exception.ServiceException;
import net.wanhe.model.SystemUser;

import java.util.List;
import java.util.Set;

/**
 * Created by chenhuan on 2018/10/12.
 */
public interface SystemUserServiceI {
    //注册，增加用户
    void addUser(SystemUser systemUser);

    //MD5的数据加密
    String shiroMD5(String password,String salt);

    //根据账号获取用户信息
    SystemUser getUserByAccount(String userAccount);

    //查询所有用户
    List<SystemUser> getAllUsers(String userAccount,String userName);

    //删除用户，修改用户的状态为0
    void updateUserStatusById(SystemUser user) throws ServiceException;

    //修改用户信息
    void updateUserNameById(SystemUser user) throws ServiceException;
}
