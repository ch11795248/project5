package net.wanhe.service.impl;

import net.wanhe.mapper.RolePermsMapper;
import net.wanhe.model.Permission;
import net.wanhe.model.Role;
import net.wanhe.service.RolePermsServiceI;
import net.wanhe.service.UserRolesServcieI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Created by chenhuan on 2018/10/14.
 */
@Service("rolePermsService")
public class RolePermsServiceImpl implements RolePermsServiceI{
    @Autowired
    private RolePermsMapper rolePermsMapper;
    @Autowired
    private UserRolesServcieI userRolesServcie;

    @Override   //根据账号查询权限
    public Set<Permission> getPermsByAccount(String userAccount) {
        Set<Permission> permissions = new HashSet<>();
        //根据账号查询角色
        List<Role> roles = userRolesServcie.getUserRolesByAccount(userAccount);
        //根据角色查询所有的权限
        if(null != roles && roles.size()>0 && roles.get(0) != null){
            for (Role role:roles){
                Set<Permission> perms = rolePermsMapper.getPermsByRoleId(role.getId());
                permissions.addAll(perms);
            }
        }
        return permissions;
    }
}
