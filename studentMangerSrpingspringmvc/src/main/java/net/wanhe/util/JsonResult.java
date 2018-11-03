package net.wanhe.util;

import java.io.Serializable;

/**
 * Created by chenhuan on 2018/9/30.
 */
public class JsonResult implements Serializable {
    private int status;
    private String message;
    private Object data;

    public JsonResult() {
    }

    public JsonResult(int status, String message, Object data) {
        this.status = status;
        this.message = message;
        this.data = data;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }
    @Override
    public String toString() {
        return "JsonResult{" +
                "status=" + status +
                ", message='" + message + '\'' +
                ", data=" + data +
                '}';
    }

}
