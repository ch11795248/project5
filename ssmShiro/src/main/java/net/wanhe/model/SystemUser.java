package net.wanhe.model;

import java.io.Serializable;

/**
 * Created by chenhuan on 2018/10/12.
 */
public class SystemUser implements Serializable {
    private Integer id;
    private String userAccount;
    private String userName;
    private String password;
    private String salt;
    private String status;

    public SystemUser() {
    }

    public SystemUser(Integer id, String userAccount, String userName, String password, String salt, String status) {
        this.id = id;
        this.userAccount = userAccount;
        this.userName = userName;
        this.password = password;
        this.salt = salt;
        this.status = status;
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

    @Override
    public String toString() {
        return "SystemUser{" +
                "id=" + id +
                ", userAccount='" + userAccount + '\'' +
                ", userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", salt='" + salt + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}
