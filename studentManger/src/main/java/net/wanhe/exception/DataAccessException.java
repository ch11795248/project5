package net.wanhe.exception;

/**
 * Created by 59611 on 2018/9/21.
 */
public class DataAccessException extends Exception {
    public DataAccessException() {
    }

    public DataAccessException(String message) {
        super(message);
    }

    public DataAccessException(Throwable cause) {
        super(cause);
    }
}
