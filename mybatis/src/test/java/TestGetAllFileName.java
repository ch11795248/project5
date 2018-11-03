import org.junit.Test;

import java.io.File;

/**
 * Created by chenhuan on 2018/10/8.
 */
public class TestGetAllFileName {
    @Test
    public void test(){
        getAllFileNames("D:\\BaiduNetdiskDownload\\班得瑞纯音乐");
    }

    public void getAllFileNames(String fileName){
        if(fileName == null){
            return;
        }
        File[] files = new File(fileName).listFiles();
        for(File f:files){
            if(f.isDirectory()){
                getAllFileNames(f.getPath());
            }
            if(f.isFile()){
                System.out.println(f.getName());
            }
        }
    }
}
