package net.wanhe.exception;

/**
 * Created by chenhuan on 2018/10/13.
 */
public class AccountExistException extends Exception {
    public AccountExistException() {
        super();
    }

    public AccountExistException(String message) {
        super(message);
    }

    public AccountExistException(Throwable cause) {
        super(cause);
    }
}
