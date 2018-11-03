package net.wanhe.model;

import java.io.Serializable;

/**
 * Created by chenhuan on 2018/10/9.
 */
public class ClassRoom implements Serializable {
    private Integer id;
    private String name;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "ClassRoomMapper{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
