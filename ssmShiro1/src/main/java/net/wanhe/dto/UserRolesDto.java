package net.wanhe.dto;

import java.io.Serializable;

/**
 * Created by chenhuan on 2018/10/13.
 */
public class UserRolesDto implements Serializable {
    private Integer id;
    private String userAccount;
    private String userName;
    private String password;
    private String salt;
    private String status;
    private String roles;

    public UserRolesDto() {
    }

    public UserRolesDto(Integer id, String userAccount, String userName, String password, String salt, String status, String roles) {
        this.id = id;
        this.userAccount = userAccount;
        this.userName = userName;
        this.password = password;
        this.salt = salt;
        this.status = status;
        this.roles = roles;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserAccount() {
        return userAccount;
    }

    public void setUserAccount(String userAccount) {
        this.userAccount = userAccount;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getRoles() {
        return roles;
    }

    public void setRoles(String roles) {
        this.roles = roles;
    }

    @Override
    public String toString() {
        return "UserRolesDto{" +
                "id=" + id +
                ", userAccount='" + userAccount + '\'' +
                ", userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", salt='" + salt + '\'' +
                ", status='" + status + '\'' +
                ", roles='" + roles + '\'' +
                '}';
    }
}
