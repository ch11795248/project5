package net.wanhe.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import net.wanhe.constant.Page;
import net.wanhe.exception.ServiceException;
import net.wanhe.model.Role;
import net.wanhe.model.SystemUser;
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

    @RequestMapping
    public String userIndex(){
        return "user/index";
    }

    @RequestMapping("roleList")
    public String roleList(){
        return "user/roleList";
    }

    @RequestMapping("security")
    public String security(){
        return "user/security";
    }

    @RequestMapping("userList")
    public String getAllUser(Map map, @RequestParam(defaultValue ="1") Integer pageNum,String userAccount, String userName){
        //从数据库中拿到所有的用户信息
        PageHelper.startPage(pageNum, Page.PAGESIZE);
        List<SystemUser> users = systemUserService.getAllUsers(userAccount,userName);
        PageInfo<SystemUser> pageInfo = new PageInfo<>(users);
        map.put("pageInfo",pageInfo);
        map.put("userAccount",userAccount);
        map.put("userName",userName);
        //得到所有的角色信息
        List<Role> roles = userRolesServcie.getAllRoles();
        map.put("roles",roles);
        return "user/userList";
    }

    @RequestMapping("updateStatus")
    @RequiresPermissions("user:delete")
    public String updateUserStatusById(SystemUser user, @RequestParam(defaultValue ="1") Integer pageNum){
        try {
            //根据id修改用户状态
            systemUserService.updateUserStatusById(user);
        } catch (ServiceException e) {
            e.printStackTrace();
        }
        return "redirect:/user/userList?pageNum="+pageNum;
    }

    @RequestMapping("getUserRoles")
    @ResponseBody
    public HttpResult getUserRolesByAccount(String userAccount){
        HttpResult result = new HttpResult();
        List<Role> roles = userRolesServcie.getUserRolesByAccount(userAccount);
        result.setData(roles);
        return result;
    }

    @RequestMapping("updateUserRoles")
    @ResponseBody
    public HttpResult updateUserRoles(Integer userId,String str){
        HttpResult result = new HttpResult();
        //定义一个list集合用来放roleId
        List<Integer> roleIds = new ArrayList<>();
        if(null != str && !"".equals(str)){
            for (String s:str.split(",")){
                roleIds.add(Integer.parseInt(s));
            }
        }
        //调用修改关联表的方法
        try {
            userRolesServcie.updateUserRoles(userId,roleIds);
            result.setStatus(200);
            result.setMessage("修改成功");
        } catch (Exception e) {
            result.setStatus(400);
            result.setMessage("修改失败");
            e.printStackTrace();
        }
        return result;
    }

}
