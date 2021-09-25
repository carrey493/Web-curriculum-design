package com.controller;

import com.entity.Accounts;
import com.service.AccountService;
import com.service.ServiceFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/admin")
public class LoginServlet extends HttpServlet {
    private AccountService accountService = ServiceFactory.getAccoutService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/jsp/admin.html")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userName = req.getParameter("username");
        String pwd = req.getParameter("pwd");
        if (accountService.Verification(new Accounts(userName, pwd))) {
            Accounts account = new Accounts(userName, pwd);
            req.getSession().setAttribute("account",account);
            req.getRequestDispatcher("/listnew")
                    .forward(req, resp);
        } else {
            req.getRequestDispatcher("/WEB-INF/jsp/admin.html")
                    .forward(req, resp);
        }
    }
}
