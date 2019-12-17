package com.filter;

import com.entity.Accounts;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebFilter("/*")
public class LoginFilter extends HttpFilter {
    private List<String> excludes = List.of("/info","/addNews","/add");
    @Override
    protected void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain) throws IOException, ServletException {
        for (String e : excludes) {
            if (e.equals(req.getServletPath())) {
                Accounts accounts = (Accounts) req.getSession().getAttribute("account");
                if (accounts != null) {
                    chain.doFilter(req, res);
                    return;
                } else {
                    res.sendRedirect("/admin");
                    return;
                }
            }
        }
        chain.doFilter(req, res);
        return;
    }

}
