package com.controller;

import com.service.NewsService;
import com.service.ServiceFactory;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/listnew")
public class ListNewsServlet extends HttpServlet {
    // 基于ServiceFactory工厂，获取单例的UserService组件
    private NewsService newsService = ServiceFactory.getNewsService();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 实现加载全部新闻，并转发至/WEB-INF/jsp/newslist.jsp
        req.setAttribute("news", newsService.listNewss());
        //读取全部转发到news.jsp页面
        req.getRequestDispatcher("/WEB-INF/jsp/news.jsp")
                .forward(req, resp);

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //侧边栏的新闻点击查看
        req.setAttribute("news", newsService.listNewss());
        req.getRequestDispatcher("/WEB-INF/jsp/newslist.jsp")
                .forward(req, resp);
    }
}
