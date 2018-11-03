package net.wanhe.service.impl;

import net.wanhe.exception.ServiceException;
import net.wanhe.mapper.SystemUserMapper;
import net.wanhe.mapper.UserRolesMapper;
import net.wanhe.model.SystemUser;
import net.wanhe.service.SystemUserServiceI;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;
import java.util.UUID;

/**
 * Created by chenhuan on 2018/10/12.
 */
@Service("systemUserService")
public class SystemUserServiceImpl implements SystemUserServiceI {
    @Autowired
    private SystemUserMapper systemUserMapper;

    @Override   //注册
    public void addUser(SystemUser user) {
        if(user == null || null == user.getUserAccount() || null == user.getPassword()||
                "".equals(user.getUserAccount()) || "".equals(user.getPassword())){
            throw new RuntimeException("参数非法");
        }
        //生成盐值
        String salt = UUID.randomUUID().toString().replace("-", "");
        user.setSalt(salt);
        //新注册用户的默认状态，1表示正常状态，0表示已删除
        user.setStatus("1");
        //设置md5加密的密码
        user.setPassword(shiroMD5(user.getPassword(),salt));
        systemUserMapper.addUser(user);

    }

    @Override   //md5加密
    public String shiroMD5(String password, String salt) {
        //加密方式
        String algorithmName = "MD5";
        //加密次数
        int hashIterations = 2;
        //盐
        ByteSource byteSource = ByteSource.Util.bytes(salt);

        SimpleHash simpleHash = new SimpleHash(algorithmName, password, byteSource, hashIterations);
        return simpleHash.toString();
    }

    @Override   //根据账号获取用户信息
    public SystemUser getUserByAccount(String userAccount) {
        SystemUser user = null;
        user = systemUserMapper.getUserByAccount(userAccount);
        return user;
    }

    @Override   //查询所有的用户信息
    public List<SystemUser> getAllUsers(String userAccount,String userName) {
        return systemUserMapper.getAllUsers(userAccount,userName);
    }


    @Override   //修改用户状态
    public void updateUserStatusById(SystemUser user) throws ServiceException {
        try {
            systemUserMapper.updateUserStatusById(user);
        } catch (Exception e) {
            throw new ServiceException("service层异常");
        }
    }

    @Override   //修改用户信息
    public void updateUserNameById(SystemUser user) throws ServiceException {
        try {
            systemUserMapper.updateUserNameById(user);
        } catch (Exception e) {
            throw new ServiceException("service层异常");
        }
    }
}
