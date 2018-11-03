package net.wanhe.mapper;

import net.wanhe.model.Role;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Set;

/**
 * Created by chenhuan on 2018/10/13.
 */
public interface UserRolesMapper {
    //查询所有的角色
    List<Role> getAllRoles();

    //查询角色
    List<Role> getUserRolesByAccount(String userAccount);

    //根据用户id删除关联表信息
    void deleteUserRolesByUserId(Integer id);

    //增加关联表信息
    void addUserRoles(@Param("userId") Integer userId, @Param("roleId") Integer roleId);
}
