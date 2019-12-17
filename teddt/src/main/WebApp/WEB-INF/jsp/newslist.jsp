<%--
  Created by IntelliJ IDEA.
  User: Rice
  Date: 2019/12/12
  Time: 16:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--记住要引入c标签！！！！！！！！！！！！-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>通知公告 东北林业大学软件工程</title>
    <!--Bootstraponline-->
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <!--css-->
    <link rel="stylesheet" href="../../resources/css/index.css">
    <link rel="stylesheet" href="../../resources/css/news.css">
    <!--  icon引入  -->
    <link href="https://cdn.bootcss.com/material-design-icons/3.0.1/iconfont/material-icons.css" rel="stylesheet">

</head>
<body>
<div class="single_news_top">
    <img src="/resources/static/img/university.jpg">
    <div class="single_news_top_name">
        <h1>通知公告</h1>
    </div>
</div>

<div class="Content_main_Out">
    <div style="width: 100%" class="Content_main_in">
        <ul>
            <c:forEach items="${news }" var="u" varStatus="v">
                <li>
                <span class="Content_main_item_time"><!--格式化显示日期-->
                        <fmt:formatDate value="${u.showTime}" pattern="yyyy-MM-dd"/></span>
                    <span class="content_main_item_name">
                    <a href="/news?flag=find&id=${u.id}">${u.name}</a>
                </span>
                </li>
            </c:forEach>
        </ul>
    </div>
</div>

<!--侧边栏-->
<div class="nav_side">
    <div style="display: flex" class="nav_side_logo">
        <img src="resources/static/img/logo_school.png">
    </div>
    <ul class="utility">
        <li class="search">
            <a href="/search">
                <div>
                    <div>
                        <i class="material-icons">search</i>
                    </div>
                    <span class="txt">查询</span>
                </div>
            </a>
        </li>
        <li class="map">
            <a href="http://map.nefu.edu.cn/">
                <div>
                    <div>
                        <i class="material-icons">map</i>
                    </div>
                    <span class="txt">地图</span>
                </div>
            </a>
        </li>
        <li class="question">
            <a href="http://tel.nefu.edu.cn/">
                <div>
                    <div>
                        <i class="material-icons">question_answer</i>
                    </div>
                    <span class="txt">问询</span>
                </div>
            </a>
        </li>
    </ul>
    <ul class="content_side">
        <li>
            <a href="test.html">
                <div>
                    <strong>关于软件工程</strong>
                    <p><span class="content_side_span">About NEFU SE</span></p>
                </div>
            </a>
        </li>
        <li>
            <a href="test.html">
                <div>
                    <strong>专业介绍</strong>
                    <p><span class="content_side_span">Introduce</span></p>
                </div>
            </a>
            <div class="second_content_side">
                <ul>
                    <li>
                        <a href="#">
                            <div>
                                <strong>专业简介</strong>
                                <p><span class="second_content_side_span">laboratory</span></p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <strong>方向介绍</strong>
                                <p><span class="second_content_side_span">laboratory</span></p>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
        </li><!--专业介绍-->
        <li>
            <a href="../../teacher/instructor.html">
                <div>
                    <strong>教师队伍</strong>
                    <p><span class="content_side_span">Demigods</span></p>
                </div>
                <div class="second_content_side">
                    <ul>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>教授</strong>
                                    <p><span class="second_content_side_span">professor</span></p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>副教授</strong>
                                    <p><span class="second_content_side_span">Associate professor</span></p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>讲师</strong>
                                    <p><span class="second_content_side_span">Instructor</span></p>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </a>
        </li><!--教师队伍-->
        <li>
            <a href="test.html">
                <div>
                    <strong>新闻</strong>
                    <p><span class="content_side_span">News</span></p>
                </div>
            </a>
        </li><!--新闻-->
        <li>
            <a href="/listnew">
                <div>
                    <strong>实验室</strong>
                    <p><span class="content_side_span">laboratory</span></p>
                </div>
            </a>
            <div class="second_content_side">
                <ul>
                    <li>
                        <a href="#">
                            <div>
                                <strong>软件创新实验室</strong>
                                <p><span class="second_content_side_span">laboratory</span></p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <strong>923创新实验室</strong>
                                <p><span class="second_content_side_span">laboratory</span></p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <strong>925移动开发实验室</strong>
                                <p><span class="second_content_side_span">laboratory</span></p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <strong>923实验室</strong>
                                <p><span class="second_content_side_span">laboratory</span></p>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>

        </li><!--实验室-->
        <li>
            <a href="test.html">
                <div>
                    <strong>就业指南</strong>
                    <p><span class="content_side_span">Research</span></p>
                </div>
            </a>
        </li>
    </ul>
</div>
<footer>

    <div>
        <img class="footer_img" src="../../resources/static/img/footer-bg-2019.png" height="357" width="1920"/>
        <div class="footer_rights">
            <p>Copyright © Nefu.Software Tan All rights reserved.</p>
        </div>

    </div>
</footer>
</body>
</html>
