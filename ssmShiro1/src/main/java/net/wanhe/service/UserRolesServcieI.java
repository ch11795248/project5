package net.wanhe.service;

import net.wanhe.model.Role;

import java.util.List;
import java.util.Set;

/**
 * Created by chenhuan on 2018/10/14.
 */
public interface UserRolesServcieI {

    //查询所有的角色
    List<Role> getAllRoles();

    //查询角色
    List<Role> getUserRolesByAccount(String userAccount);

    //根据用户编号和角色编号修改关联表
    void updateUserRoles(Integer id,List<Integer> roleIds);
}
