package net.wanhe.thread;

/**
 * Created by chenhuan on 2018/10/5.
 */
public class MyThread extends Thread {
    @Override
    public void run() {
        int count = 1;
       while (count<100){
           count++;
           System.out.println(count);
           System.out.println(Thread.currentThread().getName());
       }
    }
}
