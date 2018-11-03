package net.wanhe.service.impl;

import net.wanhe.dto.PermissionDto;
import net.wanhe.mapper.RolePermsMapper;
import net.wanhe.model.Permission;
import net.wanhe.model.Role;
import net.wanhe.service.RolePermsServiceI;
import net.wanhe.service.UserRolesServcieI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
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
    public List<Permission> getPermsByAccount(String userAccount) {
        List<Permission> permissions = new ArrayList<>();
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

    @Override   //查询所有的一级权限
    public List<Permission> getAllOnePerms() {
        List<Permission> allOnePerms = rolePermsMapper.getAllOnePerms();
        return allOnePerms;
    }

    @Override   //根据父级权限的id查询权限
    public List<Permission> getPermsByParentId(Integer parentId) {
        List<Permission> perms = rolePermsMapper.getPermsByParentId(parentId);
        return perms;
    }

    @Override   //查询所有的权限
    public List<PermissionDto> getAllPerms() {
        List<PermissionDto> allPerms = rolePermsMapper.getAllPerms();
        return allPerms;
    }

    @Override   //根据角色查询权限
    public Set<Permission> getPermsByRoleId(Integer roleId) {
        Set<Permission> permissions = rolePermsMapper.getPermsByRoleId(roleId);
        return permissions;
    }

    @Override   //修改角色权限关联表
    public void updateRolePermReference(Integer roleId, List<Integer> permIds) {
        //先将关联表的roleId全删除
        rolePermsMapper.deleteRolePermReferenceByRoleId(roleId);
        //循环遍历插入关联表
        for (Integer permId:permIds){
            rolePermsMapper.addRolePermReference(roleId,permId);
        }
    }

    @Override   //根据id删除权限(可能有子权限，用递归删除)
    public void deletePermById(Integer id) {
        //删除权限表
        rolePermsMapper.deletePermById(id);
        //删除关联表
        rolePermsMapper.deleteRolePermReferenceByPermId(id);
        //查询子权限,如果有子权限就递归删除
        List<Permission> perms = rolePermsMapper.getPermsByParentId(id);
        for(Permission p: perms){
            if(null == p){
                return;
            }else {
                deletePermById(p.getId());
            }
        }
    }

    @Override   //根据id查询权限
    public PermissionDto getPermById(Integer id) {
        PermissionDto permissionDto = rolePermsMapper.getPermById(id);
        return permissionDto;
    }

    @Override   //修改权限
    public void updatePerm(Permission permission) {
        rolePermsMapper.updatePerm(permission);
    }
}
