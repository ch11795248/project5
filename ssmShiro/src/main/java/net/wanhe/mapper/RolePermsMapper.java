package net.wanhe.mapper;

import net.wanhe.dto.PermZtreeDto;
import net.wanhe.dto.PermissionDto;
import net.wanhe.model.Permission;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Set;

/**
 * Created by chenhuan on 2018/10/14.
 */
public interface RolePermsMapper {

    //根据角色查询权限
    Set<Permission> getPermsByRoleId(Integer roleId);

    //查询所有的一级权限
    List<Permission> getAllOnePerms();

    //根据父级权限的id查询权限信息
    List<Permission> getPermsByParentId(Integer parentId);

    //查询所有的权限
    List<PermissionDto> getAllPerms();

    //根据角色id删除关联表
    void deleteRolePermReferenceByRoleId(Integer roleId);

    //向角色权限关联表插入信息
    void addRolePermReference(@Param("roleId") Integer roleId, @Param("permId") Integer permId);

    //根据id删除权限
    void deletePermById(Integer id);

    //根据parentId查询子权限
    Permission getPermsById(Integer parentId);

    //根据权限id删除关联表
    void deleteRolePermReferenceByPermId(Integer permId);

    //根据id查询权限
    PermissionDto getPermById(Integer id);

    //修改权限
    void updatePerm(Permission permission);

    //查询所有的权限zTreeDto
    List<PermZtreeDto> getAllPermission();
}
