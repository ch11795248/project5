package net.wanhe.util;

import java.io.Serializable;

/**
 * Created by Administrator on 2018/9/28.
 */
public class HttpResult implements Serializable {
    private Integer status;
    private String message;
    private Object data;
    private Object data2;

    public HttpResult() {
    }

    public Object getData2() {
        return data2;
    }

    public void setData2(Object data2) {
        this.data2 = data2;
    }

    public HttpResult(Integer status, Object data) {
        this.status = status;
        this.data = data;
    }

    public HttpResult(Integer status, String message) {
        this.status = status;
        this.message = message;
    }

    public HttpResult(Integer status, String message, Object data) {
        this.status = status;
        this.message = message;
        this.data = data;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
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
}
