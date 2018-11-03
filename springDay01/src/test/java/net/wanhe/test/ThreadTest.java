package net.wanhe.test;

import net.wanhe.thread.MyRunable;
import net.wanhe.thread.MyThread;
import net.wanhe.thread.Tickets;
import org.junit.Test;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * Created by chenhuan on 2018/10/5.
 */
public class ThreadTest {

    private AtomicInteger ai = new AtomicInteger(100);
    private ExecutorService threadPool = Executors.newFixedThreadPool(3);



    @Test
    public void sellTickets(){
        new Thread(new Runnable() {
            @Override
            public void run() {
                while (true) {
                    if(ai.get()>0){
                        System.out.println(Thread.currentThread().getName()+"=="+ai.decrementAndGet());
                    }
                }
            }
        }).start();
        new Thread(new Runnable() {
            @Override
            public void run() {
                while (true) {
                    if(ai.get()>0){
                        System.out.println(Thread.currentThread().getName()+"=="+ai.decrementAndGet());
                    }
                }
            }
        }).start();
    }

}

