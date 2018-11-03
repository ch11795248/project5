package net.wanhe.Singleton;

/**
 * Created by chenhuan on 2018/10/6.
 */
public class HungrySingle {
    private HungrySingle instance = new HungrySingle();

    private HungrySingle() {
    }
    public HungrySingle getInstance() {
        return instance;
    }
}
