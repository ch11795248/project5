package net.wanhe.service;

import net.wanhe.dto.PermZtreeDto;
import net.wanhe.dto.PermissionDto;
import net.wanhe.model.Permission;

import java.util.List;
import java.util.Set;

/**
 * Created by chenhuan on 2018/10/14.
 */
public interface RolePermsServiceI {
    //根据账号查询权限
    List<Permission> getPermsByAccount(String userAccount);

    //查询所有的一级权限
    List<Permission> getAllOnePerms();

    //根据父级权限的id查询权限信息
    List<Permission> getPermsByParentId(Integer parentId);

    //查询所有的权限
    List<PermissionDto> getAllPerms();

    //根据角色查询权限
    Set<Permission> getPermsByRoleId(Integer roleId);

    //修改角色权限关联表
    void updateRolePermReference(Integer roleId,List<Integer> permIds);

    //根据id删除权限
    void deletePermById(Integer id);

    //根据id查询权限
    PermissionDto getPermById(Integer id);

    //修改权限
    void updatePerm(Permission permission);

    //查询所有的权限
    List<PermZtreeDto> getAllPermission();
}
