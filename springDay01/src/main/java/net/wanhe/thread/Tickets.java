package net.wanhe.thread;

/**
 * Created by chenhuan on 2018/10/5.
 */
public class Tickets {
    private int count = 100;
    public synchronized void sellTickets(){
        if(count>0){
            count--;
        }
        System.out.println(Thread.currentThread().getName()+"===="+count);
    }
}
