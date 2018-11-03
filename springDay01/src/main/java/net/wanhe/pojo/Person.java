package net.wanhe.pojo;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Properties;

/**
 * Created by 59611 on 2018/9/22.
 */
public class Person {
    private Integer id;
    private String name;
    private String[] car;
    private List<String> list;
    private Map<Integer,String> map;
    private Properties properties;

    public Person() {
    }

    public Person(Integer id, String name, String[] car, List<String> list, Map<Integer, String> map, Properties properties) {
        this.id = id;
        this.name = name;
        this.car = car;
        this.list = list;
        this.map = map;
        this.properties = properties;
    }

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

    public String[] getCar() {
        return car;
    }

    public void setCar(String[] car) {
        this.car = car;
    }

    public List<String> getList() {
        return list;
    }

    public void setList(List<String> list) {
        this.list = list;
    }

    public Map<Integer, String> getMap() {
        return map;
    }

    public void setMap(Map<Integer, String> map) {
        this.map = map;
    }

    public Properties getProperties() {
        return properties;
    }

    public void setProperties(Properties properties) {
        this.properties = properties;
    }

    @Override
    public String toString() {
        return "Person{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", car=" + Arrays.toString(car) +
                ", list=" + list +
                ", map=" + map +
                ", properties=" + properties +
                '}';
    }
}
