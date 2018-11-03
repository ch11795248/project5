package net.wanhe.dto;

import java.io.Serializable;

/**
 * Created by chenhuan on 2018/10/15.
 */
public class PermissionDto implements Serializable {
    private Integer id;
    private Integer parentId;
    private String parentName;
    private String permName;
    private String permission;
    private String status;

    public PermissionDto() {
    }

    public PermissionDto(Integer id, Integer parentId, String parentName, String permName, String permission, String status) {
        this.id = id;
        this.parentId = parentId;
        this.parentName = parentName;
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

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    public String getParentName() {
        return parentName;
    }

    public void setParentName(String parentName) {
        this.parentName = parentName;
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
        return "PermissionDto{" +
                "id=" + id +
                ", parentId=" + parentId +
                ", parentName='" + parentName + '\'' +
                ", permName='" + permName + '\'' +
                ", permission='" + permission + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}
