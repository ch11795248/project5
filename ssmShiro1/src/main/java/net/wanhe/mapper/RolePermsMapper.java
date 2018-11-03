package net.wanhe.mapper;

import net.wanhe.model.Permission;

import java.util.Set;

/**
 * Created by chenhuan on 2018/10/14.
 */
public interface RolePermsMapper {

    //根据角色查询权限
    Set<Permission> getPermsByRoleId(Integer roleId);
}
