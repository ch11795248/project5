package net.wanhe.realm;

import net.wanhe.model.Permission;
import net.wanhe.model.Role;
import net.wanhe.model.SystemUser;
import net.wanhe.service.RolePermsServiceI;
import net.wanhe.service.SystemUserServiceI;
import net.wanhe.service.UserRolesServcieI;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Created by chenhuan on 2018/10/12.
 */
public class Myrealm extends AuthorizingRealm {
    @Autowired
    private SystemUserServiceI systemUserService;
    @Autowired
    private UserRolesServcieI userRolesServcie;
    @Autowired
    private RolePermsServiceI rolePermsService;

    @Override   //授权
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
        //获取账号
        String account = (String) principals.getPrimaryPrincipal();
        List<Role> roles = userRolesServcie.getUserRolesByAccount(account);
        Set<String> roleName = new HashSet<>();
        if(null != roles && roles.size()>0 && null !=roles.get(0)) {
            for (Role role : roles) {
                roleName.add(role.getRole());
            }
        }
        //设置角色
        authorizationInfo.setRoles(roleName);
        //设置权限
        Set<Permission> perms = rolePermsService.getPermsByAccount(account);
        Set<String> permString = new HashSet<>();
        if(null != perms && perms.size()>0) {
            for (Permission permission : perms) {
                permString.add(permission.getPermission());
            }
        }
        authorizationInfo.setStringPermissions(permString);
        return authorizationInfo;
    }

    @Override   //认证
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        String userAccount = (String) token.getPrincipal();
        String loginPassword = new String((char[])token.getCredentials());
        //根据账号查出用户信息
        SystemUser user = systemUserService.getUserByAccount(userAccount);
        //如果用户不存在
        if(null == user){
            throw new UnknownAccountException();
        }
        //加密规则
        String newPassword = systemUserService.shiroMD5(loginPassword , user.getSalt());
        //判断登录密码和真实密码是否相同
        if(!newPassword.equals(user.getPassword())){
            throw new IncorrectCredentialsException();
        }
        if (!"1".equals(user.getStatus())){
            throw new LockedAccountException();
        }
        SimpleAuthenticationInfo simpleAuthenticationInfo = new SimpleAuthenticationInfo(user.getUserAccount(), user.getPassword(),
                ByteSource.Util.bytes(user.getSalt()), getName());
        return simpleAuthenticationInfo;
    }
}
