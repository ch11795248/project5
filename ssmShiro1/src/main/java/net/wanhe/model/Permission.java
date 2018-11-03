package net.wanhe.model;

import java.io.Serializable;

/**
 * Created by chenhuan on 2018/10/14.
 */
public class Permission implements Serializable {
    private Integer id;
    private String permName;
    private String permission;
    private String status;

    public Permission() {
    }

    public Permission(Integer id, String permName, String permission, String status) {
        this.id = id;
        this.permName = permName;
        this.permission = permission;
        this.status = status;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPermName() {
        return permName;
    }

    public void setPermName(String permName) {
        this.permName = permName;
    }

    public String getPermission() {
        return permission;
    }

    public void setPermission(String permission) {
        this.permission = permission;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Permission{" +
                "id=" + id +
                ", permName='" + permName + '\'' +
                ", permission='" + permission + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}
