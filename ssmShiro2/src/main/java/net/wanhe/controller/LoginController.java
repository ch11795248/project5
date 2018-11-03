package net.wanhe.controller;

import net.wanhe.model.SystemUser;
import net.wanhe.service.SystemUserServiceI;
import net.wanhe.util.HttpResult;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.session.HttpServletSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by chenhuan on 2018/10/12.
 */
@Controller
@RequestMapping("login")
public class LoginController {

    @Autowired
    private SystemUserServiceI systemUserService;

    @RequestMapping("toLogin")
    public String showLogin(){
        return "login/login";
    }

    @RequestMapping("loginCheck")
    @ResponseBody
    public HttpResult loginCheck(SystemUser user, String rememberMe){
        HttpResult result = new HttpResult();
        //非空判断
        if(null == user || null == user.getUserAccount() || null == user.getPassword() ||
                "".equals(user.getUserAccount()) || "".equals(user.getPassword())){
            result.setStatus(88);
            result.setMessage("参数非法");
            return result;
        }
        //非空判断
        SystemUser systemUser = systemUserService.getUserByAccount(user.getUserAccount());
        if(null == systemUser){
            result.setStatus(98);
            result.setMessage("账号或密码错误");
            return result;
        }
        //账号是否被锁定的判断
        if("0".equals(systemUser.getStatus())){
            result.setStatus(99);
            result.setMessage("账户被锁定，请联系管理员");
            return result;
        }
        //根据前台的账号密码获取令牌
        UsernamePasswordToken token = new UsernamePasswordToken(user.getUserAccount(), user.getPassword());
        Subject subject = SecurityUtils.getSubject();
        try {
            //如果选择记住我，设置记住我功能
            if(null != rememberMe && !"".equals(rememberMe)){
                token.setRememberMe(true);
            }
            subject.login(token);
            result.setStatus(200);
            result.setMessage("登录成功");
        } catch (AuthenticationException e) {
            e.printStackTrace();
            result.setStatus(500);
            result.setMessage("登录失败");
        }
        return result;
    }

    @RequestMapping("toRegister")
    public String showRegister(){
        return "login/register";
    }

    @RequestMapping("register")
    @ResponseBody
    public HttpResult register(SystemUser systemUser){
        //注册时该账户是否已存在的校验
        HttpResult result = new HttpResult();
        SystemUser account = systemUserService.getUserByAccount(systemUser.getUserAccount());
        if(null != account){
            result.setStatus(488);
            result.setMessage("该账户已存在");
            return result;
        }
        //如果账号不存在，去注册
        try {
            systemUserService.addUser(systemUser);
            result.setStatus(200);
            result.setMessage("注册成功");
        } catch (Exception e) {
            e.printStackTrace();
            result.setStatus(500);
            result.setMessage("注册失败");
        }
        return result;
    }


}
