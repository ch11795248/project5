package net.wanhe.controller;

import net.wanhe.pojo.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by chenhuan on 2018/9/28.
 */

@Controller
@RequestMapping("login")
public class LoginController {

    @RequestMapping
    public String show(HttpServletRequest request){
        //免登陆
        if(request.getSession().getAttribute("user")!=null){
            return "success";
        }
        return "login";
    }

    @RequestMapping("submit")
    @ResponseBody
    public JsonResult login(User user,HttpServletRequest request){
        JsonResult result = new JsonResult();
        if(user!=null){
            if(user.getName()!=null&&user.getName().equals("zhangsan")
                    &&user.getPass()!=null&&user.getPass().equals("123")){
                request.getSession().setAttribute("user",new User("zhangsan","123"));
                result.setStatus(200);
                result.setMessage("登录成功");
            }else {
                result.setStatus(400);
                result.setMessage("登录失败");
            }
        }
        return result;
    }

    @RequestMapping("success")
    public String success(){
        return "success";
    }
}
