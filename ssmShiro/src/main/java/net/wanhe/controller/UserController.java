package net.wanhe.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import net.wanhe.constant.Page;
import net.wanhe.dto.PermZtreeDto;
import net.wanhe.dto.PermissionDto;
import net.wanhe.exception.ServiceException;
import net.wanhe.model.Permission;
import net.wanhe.model.Role;
import net.wanhe.model.SystemUser;
import net.wanhe.realm.Myrealm;
import net.wanhe.service.RolePermsServiceI;
import net.wanhe.service.SystemUserServiceI;
import net.wanhe.service.UserRolesServcieI;
import net.wanhe.util.HttpResult;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Created by chenhuan on 2018/10/13.
 */
@Controller
@RequestMapping("user")
public class UserController {
    @Autowired
    private SystemUserServiceI systemUserService;
    @Autowired
    private UserRolesServcieI userRolesServcie;
    @Autowired
    private RolePermsServiceI rolePermsService;
    @Autowired
    private Myrealm myrealm;

    @RequestMapping
    public String userIndex() {
        return "user/index";
    }

    @RequestMapping("roleList") //显示所有的角色
    @RequiresPermissions("role:query")
    public String roleList(Map map, @RequestParam(defaultValue = "1") Integer pageNum) {
        //设置分页参数
        PageHelper.startPage(pageNum, Page.PAGESIZE);
        //从数据库拿到所有的角色信息
        List<Role> allRoles = userRolesServcie.getAllRoles();
        PageInfo<Role> pageInfo = new PageInfo<>(allRoles);
        map.put("pageInfo", pageInfo);
        //拿到所有的权限信息
        List<PermissionDto> allPerms = rolePermsService.getAllPerms();
        map.put("allPerms", allPerms);
        return "user/roleList";
    }

    @RequestMapping("deleteRole")  //删除角色
    @ResponseBody
    public HttpResult deleteRoleById(Integer roleId) {
        HttpResult result = new HttpResult();
        try {
            userRolesServcie.deleteRoleById(roleId);
            result.setStatus(200);
            result.setMessage("删除成功");
        } catch (Exception e) {
            result.setStatus(400);
            result.setMessage("删除失败");
            e.printStackTrace();
        }
        return result;
    }

    @RequestMapping("getPermsByRoleId") //根据角色查询权限信息
    @ResponseBody
    public HttpResult getPermsByRoleId(Integer roleId) {
        HttpResult result = new HttpResult();
        //根据角色ID查询权限(zTree)
        List<PermZtreeDto> allPermission = rolePermsService.getAllPermission();
        //根据角色ID查询权限
        Set<Permission> permissions = rolePermsService.getPermsByRoleId(roleId);
        //如果有这个权限给对应权限的checked为true
        for (PermZtreeDto p1 : allPermission) {
            for (Permission p2 : permissions) {
                if (p1.getId() == p2.getId()) {
                    p1.setChecked(true);
                }
            }
        }
        JSONArray jsonArray = JSONArray.parseArray(JSON.toJSONString(allPermission));
        result.setData(jsonArray);
        //根据角色id查询角色信息
        Role role = userRolesServcie.getRoleByRoleId(roleId);
        result.setData2(role);
        return result;
    }

    @RequestMapping("updateRolePerms")  //修改角色权限关联表
    @ResponseBody
    public HttpResult updateRolePerms(Integer roleId, String str) {
        HttpResult result = new HttpResult();
        //定义一个集合存放permId
        List<Integer> permIds = new ArrayList<>();
        if (null != str && !"".equals(str)) {
            for (String s : str.split(",")) {
                if (null != s && !"".equals(s)) {
                    permIds.add(Integer.parseInt(s));
                }
            }
        }
        //调用修改关联表的方法
        try {
            rolePermsService.updateRolePermReference(roleId, permIds);
            result.setStatus(200);
            result.setMessage("修改成功");
        } catch (Exception e) {
            result.setStatus(400);
            result.setMessage("修改失败");
            e.printStackTrace();
        }
        return result;
    }

    @RequestMapping("updateRoleInfo")   //修改角色信息
    @ResponseBody
    public HttpResult updateRoleInfo(Role role) {
        HttpResult result = new HttpResult();
        try {
            userRolesServcie.updateRole(role);
            result.setStatus(200);
            result.setMessage("修改成功");
        } catch (Exception e) {
            result.setStatus(400);
            result.setMessage("修改失败");
            e.printStackTrace();
        }
        return result;
    }

    @RequestMapping("security") //查询所有的一级权限
    @RequiresPermissions("perm:query")
    public String security(Map map) {
        List<Permission> allOnePerms = rolePermsService.getAllOnePerms();
        map.put("allOnePerms", allOnePerms);
        return "user/security";
    }

    @RequestMapping("getPermsById") //根据id查询子权限
    @ResponseBody
    public HttpResult getPermsById(Integer parentId) {
        HttpResult result = new HttpResult();
        List<Permission> perms = rolePermsService.getPermsByParentId(parentId);
        result.setData(perms);
        return result;
    }

    @RequestMapping("getPermDtoById")   //根据id查询权限dto
    @ResponseBody
    public HttpResult getPermDtoById(Integer permId) {
        HttpResult result = new HttpResult();
        PermissionDto perm = rolePermsService.getPermById(permId);
        result.setData(perm);
        return result;
    }

    @RequestMapping("deletePermById")   //根据id删除权限
    @ResponseBody
    public HttpResult deletePermById(Integer permId) {
        HttpResult result = new HttpResult();
        try {
            rolePermsService.deletePermById(permId);
            result.setStatus(200);
            result.setMessage("删除成功");
        } catch (Exception e) {
            result.setStatus(400);
            result.setMessage("删除失败");
            e.printStackTrace();
        }
        return result;
    }

    @RequestMapping("updatePerm")   //修改权限
    @ResponseBody
    public HttpResult updatePerm(Permission permission) {
        HttpResult result = new HttpResult();
        try {
            rolePermsService.updatePerm(permission);
            result.setStatus(200);
            result.setMessage("修改成功");
        } catch (Exception e) {
            result.setStatus(400);
            result.setMessage("修改失败");
            e.printStackTrace();
        }
        return result;
    }

    @RequestMapping("userList")
    @RequiresPermissions("user:query")
    public String getAllUser(Map map, @RequestParam(defaultValue = "1") Integer pageNum, String userAccount, String userName) {
        //从数据库中拿到所有的用户信息
        PageHelper.startPage(pageNum, Page.PAGESIZE);
        List<SystemUser> users = systemUserService.getAllUsers(userAccount, userName);
        PageInfo<SystemUser> pageInfo = new PageInfo<>(users);
        map.put("pageInfo", pageInfo);
        map.put("userAccount", userAccount);
        map.put("userName", userName);
        //得到所有的角色信息
        List<Role> roles = userRolesServcie.getAllRoles();
        map.put("roles", roles);
        return "user/userList";
    }

    @RequestMapping("updateInfo")   //修改用户信息
    @ResponseBody
    public HttpResult updateInfo(SystemUser user) {
        HttpResult result = new HttpResult();
        try {
            systemUserService.updateUserNameById(user);
            result.setStatus(200);
            result.setMessage("修改成功");
        } catch (Exception e) {
            result.setStatus(400);
            result.setMessage("修改失败");
            e.printStackTrace();
        }
        return result;
    }

    @RequestMapping("updateStatus")
    @RequiresPermissions("user:delete")
    public String updateUserStatusById(SystemUser user, @RequestParam(defaultValue = "1") Integer pageNum) {
        try {
            //根据id修改用户状态
            systemUserService.updateUserStatusById(user);
        } catch (ServiceException e) {
            e.printStackTrace();
        }
        return "redirect:/user/userList?pageNum=" + pageNum;
    }

    @RequestMapping("getUserRoles")
    @ResponseBody
    public HttpResult getUserRolesByAccount(String userAccount) {
        HttpResult result = new HttpResult();
        //查询用户对应的所有的角色
        List<Role> roles = userRolesServcie.getUserRolesByAccount(userAccount);
        result.setData(roles);
        //查询用户对应的信息
        SystemUser user = systemUserService.getUserByAccount(userAccount);
        result.setData2(user);
        return result;
    }

    @RequestMapping("updateUserRoles")
    @ResponseBody
    public HttpResult updateUserRoles(Integer userId, String str) {
        HttpResult result = new HttpResult();
        //定义一个list集合用来放roleId
        List<Integer> roleIds = new ArrayList<>();
        if (null != str && !"".equals(str)) {
            for (String s : str.split(",")) {
                roleIds.add(Integer.parseInt(s));
            }
        }
        //调用修改关联表的方法
        try {
            userRolesServcie.updateUserRoles(userId, roleIds);
            result.setStatus(200);
            result.setMessage("修改成功");
            //清缓存
            myrealm.clearCached();
        } catch (Exception e) {
            result.setStatus(400);
            result.setMessage("修改失败");
            e.printStackTrace();
        }
        return result;
    }

}
