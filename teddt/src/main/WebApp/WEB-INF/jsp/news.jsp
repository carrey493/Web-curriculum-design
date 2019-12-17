<%--
  Created by IntelliJ IDEA.
  User: Rice
  Date: 2019/11/23
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--记住要引入c标签！！！！！！！！！！！！-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>学校新闻</title>
    <style>
        table, th, td {
            border: 1px solid rgb(0,120,90)
        }

        h1 {
            padding: 10px;
        }

    </style>

</head>
<body>

    <div class="main">
        <%--添加的隐藏的form表单--%>

        <a href="/add">
            <button name="flag" value="delete" type="submit" class="btn btn-danger">新增新闻</button>

        </a>
            <a href="home">
                <button>返回首页</button>
            </a>
        <div style="padding: 10px">
            <form action="" method="post">
                <input type="hidden" name="flag" value="">
                <input type="hidden" name="id" value="">
            </form>
            <table>
                <tr>
                    <td>#id</td>
                    <td>#名称</td>
                    <td>#插入时间</td>
                    <td>#显示时间</td>
                    <td>#操作</td>
                </tr>
                <tbody>
                <c:forEach items="${news }" var="u" varStatus="v">
                <tr>
                    <td>${u.id}</td>
                    <td><a href="/news?flag=find&id=${u.id}">${u.name}</a></td>
                    <td>${u.insertTime}</td>
                    <td>${u.showTime}</td>
                    <td>
                        <form action="/info" method="post">
                            <input type="hidden" name="id" value="${u.id}">
                                <%--                <a href="/info?flag=delete&id=${u.id}">--%>
                            <button name="flag" value="delete" type="submit" class="btn btn-danger">删除</button>
                                <%--                </a>--%>
                                <%--                <a href="/info?flag=find&id=${u.id}">--%>
<%--                            <button name="flag" value="find" type="submit" class="btn btn-info">查看</button>--%>
                                <%--                </a>--%>
                                <%--                <a href="/info?flag=update&id=${u.id}">--%>
                            <button name="flag" type="submit" value="update" class="btn btn-info">修改</button>
                                <%--                </a>--%>
                        </form>
                    </td>
                    </c:forEach>
                </tbody>
                </ul>
            </table>
        </div>
    </div>


</body>
<script type="text/javascript">
    $(document).ready(function () {
        $("#show").mouseenter(function () {
            //应该该是动态改变文本内容 从而改变图标
            $("#show").text('do_not_disturb_on');
            //$("#hidden").show();
            //$("#show").hide();
            $(".down_item").show(100);

        });
        $(".nav_icon").hover(function () {
            //进入悬浮时 无任何动作产生
        }, function () {
            //离开悬浮时 消除底下的小图片 同时将上方大图标改回来并且旋转
            $("#show").text('face');
            $(".down_item").hide();
        });
    });
</script>
</html>
