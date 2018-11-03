package net.wanhe.service;

import net.wanhe.model.Permission;

import java.util.Set;

/**
 * Created by chenhuan on 2018/10/14.
 */
public interface RolePermsServiceI {
    //根据账号查询权限
    Set<Permission> getPermsByAccount(String userAccount);
}
