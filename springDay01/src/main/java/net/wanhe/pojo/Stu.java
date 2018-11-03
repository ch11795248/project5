package net.wanhe.pojo;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.*;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

/**
 * Created by 59611 on 2018/9/25.
 */
public class Stu implements BeanNameAware,BeanFactoryAware,ApplicationContextAware,InitializingBean,DisposableBean{
    public Stu() {
        System.out.println("Stu被实例化了");
    }

    private Integer id;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Override
    public void setBeanFactory(BeanFactory beanFactory) throws BeansException {
        System.out.println("设置Bean工厂被调用，"+beanFactory);
    }

    @Override
    public void setBeanName(String name) {
        System.out.println("设置实例id被调用，"+name);
    }

    @Override
    public void destroy() throws Exception {
        System.out.println("destroy被嗲用");
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        System.out.println("afterPropertiesSet()被调用");
    }

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        System.out.println("setApplicationContext被调用");
    }

    public void myInit(){
        System.out.println("初始化myInit()");
    }

    public void myDestroy(){
        System.out.println("销毁被调用myDestroy()");
    }
}
