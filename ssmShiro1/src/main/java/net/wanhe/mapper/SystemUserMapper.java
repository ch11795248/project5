package net.wanhe.mapper;

import net.wanhe.model.SystemUser;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Set;

/**
 * Created by chenhuan on 2018/10/12.
 */
public interface SystemUserMapper {
    //注册
    void addUser(SystemUser systemUser);

    //登录
    SystemUser getUserByAccount(String userAccount);

    //查询权限
    Set<String> getUserPermsByAccount(String userAccount);

    //查询所有用户
    List<SystemUser> getAllUsers(@Param("userAccount") String userAccount,@Param("userName") String userName);

    //删除用户
    void updateUserStatusById(SystemUser user);
}
