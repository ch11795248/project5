package net.wanhe.model;

import java.io.Serializable;

/**
 * Created by chenhuan on 2018/10/14.
 */
public class Role implements Serializable {
    private Integer id;
    private String role;
    private String description;
    private String status;

    public Role() {
    }

    public Role(Integer id, String role, String description, String status) {
        this.id = id;
        this.role = role;
        this.description = description;
        this.status = status;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Role{" +
                "id=" + id +
                ", role='" + role + '\'' +
                ", description='" + description + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}
