package net.wanhe;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by 59611 on 2018/9/21.
 */
@WebFilter("/*")
public class EncodingFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest hsr = (HttpServletRequest) req;
        HttpServletResponse hrsp = (HttpServletResponse)resp;

        hsr.setCharacterEncoding("utf-8");
        hrsp.setContentType("text/html;character=utf-8");
        chain.doFilter(req, resp);
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
