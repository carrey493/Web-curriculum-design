<%--
  Created by IntelliJ IDEA.
  User: Rice
  Date: 2019/11/25
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新闻上传</title>

</head>
<body>


<div class="containers">


    <div class="main">
        <h1>新闻上传</h1>
        <form action="/addNews" method="post">

            <div class="input-group mb-3" style="display: none">
                <div class="input-group-prepend">
                    <span class="input-group-text">文章ID</span>
                </div>
                <input name="id" type="text" class="form-control" value="${news.id}" placeholder="请输入文章标题">
            </div>

            文章标题<input name="name" required type="text" value="${news.name}" placeholder="请输入文章标题">
            文章作者<input name="editor" required type="text" class="form-control" value="${news.editor}"
                       placeholder="请输入作者">
            上传时间<input name="showtime" id="show_time" type="datetime-local" required type="text">
            文章内容<input id="content" name="content" required class="form-control" value="${news.content}"
                       rows="10"></input>
            <input type="submit" value="Submit">
        </form>
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
<script>
    //自动给时间块填入当前时间
    let date = new Date();
    let Day = date.getDate();
    if (Day < 10) Day = '0' + Day;
    console.log(Day);
    let times = date.getFullYear() + '-' + (date.getMonth() + 1) + '-' + Day + "T" + date.toLocaleTimeString('chinese', {hour12: false});
    times = times.slice(0, 16).toString();
    document.getElementById("show_time").value = times;
    console.log(times);
</script>
</html>
