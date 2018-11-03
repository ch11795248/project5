package net.wanhe.dto;

import java.io.Serializable;

/**
 * Created by chenhuan on 2018/10/17.
 */
public class PermZtreeDto implements Serializable {
    private Integer id;
    private Integer parentId;
    private String permName;
    private String permission;
    private String status;
    private Boolean checked;

    public PermZtreeDto() {
    }

    public PermZtreeDto(Integer id, Integer parentId, String permName, String permission, String status, Boolean checked) {
        this.id = id;
        this.parentId = parentId;
        this.permName = permName;
        this.permission = permission;
        this.status = status;
        this.checked = checked;
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

    public Boolean getChecked() {
        return checked;
    }

    public void setChecked(Boolean checked) {
        this.checked = checked;
    }

    @Override
    public String toString() {
        return "PermZtreeDto{" +
                "id=" + id +
                ", parentId=" + parentId +
                ", permName='" + permName + '\'' +
                ", permission='" + permission + '\'' +
                ", status='" + status + '\'' +
                ", checked=" + checked +
                '}';
    }
}
