import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

/**
 * Created by chenhuan on 2018/10/7.
 */
public class TestDemo1 {
    public static void main(String[] args) {
//        new Thread(new FutureTask<String>(new Callable<String>() {
//            @Override
//            public String call() throws Exception {
//                Thread.sleep(5000);
//                System.out.println("hello");
//                return "a";
//            }
//            }){
//        }).start();

        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    Thread.sleep(5000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                System.out.println("hello");
            }
        }).start();

    }
}
