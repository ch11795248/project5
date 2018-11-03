package net.wanhe.clone;

/**
 * Created by chenhuan on 2018/10/6.
 */
public class Student implements Cloneable{
    private Integer id;
    private String name;
    private Address address;

    public Student() {
    }

    public Student(Integer id, String name, Address address) {
        this.id = id;
        this.name = name;
        this.address = address;
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

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    @Override
    protected Student clone() throws CloneNotSupportedException {
        Student student = new Student();
        return student;
    }

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", address=" + address +
                '}';
    }

    public static void main(String[] args) throws CloneNotSupportedException {
        Student s1 = new Student(1,"jack",new Address(2,"nanjing"));
        Student s2 = s1.clone();
        s2.setId(2);
        s2.setAddress(new Address(3,"ss"));
        System.out.println(s1);
        System.out.println(s2);
    }
}
