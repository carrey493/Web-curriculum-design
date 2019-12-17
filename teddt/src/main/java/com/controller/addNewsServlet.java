package com.controller;

import com.entity.News;
import com.service.*;
import com.service.ServiceFactory;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Timestamp;

@WebServlet("/addNews")
public class addNewsServlet extends HttpServlet {
    private NewsService newsService = ServiceFactory.getNewsService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

            req.setCharacterEncoding("UTF-8");
            String title = req.getParameter("name");
            String time = req.getParameter("showtime");
            //很蠢的方法把时间转换为时间戳再转进去
            String times[] = time.split("T");
            Timestamp showtime = Timestamp.valueOf(times[0] + " " + times[1] + ":00");//Timestamp.valueOf(req.getParameter("showtime"));

            String editor = req.getParameter("editor");
            String content = req.getParameter("content");

        if (req.getParameter("id").equals("") ) {//如果id为空即为首次新建
            News news = new News(title, showtime, editor, content);
            newsService.addNews(news);
        } else {//如果id不为空 则为改进
            System.out.println("try to upate the news");
            int id = Integer.parseInt(req.getParameter("id"));
            News news = new News(id, title, showtime, editor, content);
            newsService.updateNews(news);
        }
        req.getRequestDispatcher(req.getContextPath() + "/listnew").forward(req, resp);
    }
}
