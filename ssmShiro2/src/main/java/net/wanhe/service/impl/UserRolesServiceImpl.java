package net.wanhe.service.impl;

import net.wanhe.mapper.UserRolesMapper;
import net.wanhe.model.Role;
import net.wanhe.service.UserRolesServcieI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Created by chenhuan on 2018/10/14.
 */
@Service("userRolesService")
public class UserRolesServiceImpl implements UserRolesServcieI {
    @Autowired
    private UserRolesMapper userRolesMapper;

    @Override   //查询所有的角色信息
    public List<Role> getAllRoles() {
        List<Role> roles = userRolesMapper.getAllRoles();
        return roles;
    }

    @Override   //根据账号查询用户角色
    public List<Role> getUserRolesByAccount(String userAccount) {
        List<Role> roles = null;
        roles = userRolesMapper.getUserRolesByAccount(userAccount);
        return roles;
    }

    @Override  //根据用户编号和角色编号修改关联表
    public void updateUserRoles(Integer userId,List<Integer> roleIds) {
        //删除关联表与用户编号相关的信息
        userRolesMapper.deleteUserRolesByUserId(userId);
        //增加关联表信息
        for(Integer roleId:roleIds){
            userRolesMapper.addUserRoles(userId,roleId);
        }
    }

    @Override   //删除角色
    public void deleteRoleById(Integer roleId) {
        try {
            //删除角色表
            userRolesMapper.deleteRoleById(roleId);
            //删除用户角色关联表
            userRolesMapper.deleteReferenceById(roleId);
            //删除角色权限关联表
            userRolesMapper.deleteReference2ById(roleId);
        } catch (Exception e) {
            throw new RuntimeException("删除角色异常");
        }
    }

    @Override   //根据角色id查询角色
    public Role getRoleByRoleId(Integer roleId) {
        Role role = userRolesMapper.getRoleByRoleId(roleId);
        return role;
    }

    @Override   //修改角色信息
    public void updateRole(Role role) {
        userRolesMapper.updateRole(role);
    }

}
