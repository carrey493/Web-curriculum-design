package com.controller;


import com.entity.News;
import com.service.NewsService;
import com.service.ServiceFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;

@WebServlet("/info")
public class AlterNewsServlet extends HttpServlet {
    private static Logger logger = Logger.getLogger(AlterNewsServlet.class.getName());
    NewsService newsService = ServiceFactory.getNewsService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getParameter("flag").equals("delete")) {
            String newsId = req.getParameter("id");
            logger.info("爷努力的用Servlet进行删除，删除的新闻id是" + newsId);
            newsService.delNews(Integer.parseInt(newsId));
            req.getRequestDispatcher(req.getContextPath() + "/listnew").forward(req, resp);
        } else if (req.getParameter("flag").equals("find")) {
            String newsId = req.getParameter("id");
            logger.info("爷尽力的把新闻转向了这个页面，并且这个页面id是" + newsId);
            News news = newsService.getNews(Integer.parseInt(newsId));//stirng 转 int
            logger.info(news.getName());
            req.setAttribute("news", news);
            req.getRequestDispatcher("/WEB-INF/jsp/SingleNews.jsp")
                    .forward(req, resp);
        } else if (req.getParameter("flag").equals("update")) {
            String newsId = req.getParameter("id");
            logger.info("爷尽力的想把新闻改了，这新闻id是" + newsId);
            News news = newsService.getNews(Integer.parseInt(newsId));
            req.setAttribute("news", news);
            req.getRequestDispatcher("/WEB-INF/jsp/addNews.jsp")
                    .forward(req, resp);
        }

    }

}