package net.wanhe.test;


import java.util.Timer;
import java.util.TimerTask;

/**
 * Created by 59611 on 2018/9/24.
 */
public class TimeTaskTest {
    public static void main(String[] args) {
        Timer timer = new Timer();
        timer.schedule(new TimerTask() {
            @Override
            public void run() {
                System.out.println("bomb");
            }
        }, 2000);

        new Timer().schedule(new TimerTask() {
            @Override
            public void run() {
                System.out.println("booo");

            }
        },5000);
    }
}
