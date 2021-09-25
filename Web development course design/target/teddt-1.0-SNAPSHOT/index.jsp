<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: guan
  Date: 2019/12/15
  Time: 10:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>东北林业大学信息与计算机工程学院</title>
  <link  rel="stylesheet" type="text/css">
  <script src="../../resources/jquery/jquery-3.4.1.min.js"></script>
  <script src="../../resources/jquery/jquery.superslide.js"></script>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.15.0/umd/popper.min.js" integrity="sha384-L2pyEeut/H3mtgCBaUNw7KWzp5n9+4pDQiExs933/5QfaTh8YStYFFkOzSoXjlTb" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  <style>
    *{
      padding:0;
      margin:0;
      box-sizing: border-box;
    }
    body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6,form, input, textarea, p{
      padding:0px;
      margin:0px;
      font-weight:normal;
    }
    ol, ul{
      list-style:none;
    }
    i,em{
      font-style:normal;
    }
    li{
      list-style-type:none;
    }
    a{
      text-decoration:black;
      color:#333;
    }
    a:hover{
      text-decoration: none;
    }
    img{
      border:0;
      padding:0px;
      margin:0px;
    }

    /*公共样式开始*/
    body{
      font-family:"Microsoft YaHei", "微软雅黑", "宋体";
      color:#333;
      font-size:14px;
      background-image: url("resources/mainpictures/background.png");
    }
    .fl{
      float:left;
    }
    .fr{
      float:right;
    }
    .hidden{
      display:none;
    }
    .display{
      display:block;
    }
    .mt15{
      margin-top:15px;
    }
    .ml20{
      margin-left:20px;
    }
    .clear{
      clear:both;
      font-size:0px;
      line-height:0px;
      height:0px;
    }
    /***************top****************/
    #top{
      width:100%;
      height:40px;
      background-color: #001733;
    }
    .top{
      width:1280px;
      margin:0 auto;
      height:40px;
      overflow:hidden;
    }

    .top .top-l{
      width:380px;
      line-height:40px;
      color:white;
    }
    .top .top-r{
      width:450px;
      overflow: hidden;
      padding-top:7px;
    }
    .top .top-r .top-link{
      color:#a3a7ad;
      margin-right:8px;
      padding-top:3px;
    }
    .top .top-r .top-link a{
      color:white;
    }

    /*search*/
    .ss{
      width:200px;
      height:26px;
      overflow:hidden;
      margin-left: 30px;
    }
    .ss a{
      text-align: center;
    }
    .ssk{
      width:160px;
      height:25px;
      line-height:25px;
      padding-left:10px;
      float:left;
      overflow:hidden;
      border:none;
      background:none;
      background-color:#fff;
      outline:medium none;
      color:#b1b1b1;
      font-family:"微软雅黑";}
    .search_btn{
      float:right;
      width:29px;
      height:25px;
      outline:medium none;
    }

    /***************nav****************/
    #menunav{
      width:100%;
      height:100px;
      background-color: #002147;}
    .menunav{width:1280px;
      margin:0 auto;
      height:100px;
    }
    .menunav .logo{
      padding-top:7px;
      width:460px;
      height:81px;
    }

    .nav {
      position:relative;
      height:53px;
      line-height:53px;
      width:100%;
      background:#25506b;
    }
    .nav ul {
      padding:0;
      margin:0;
      list-style-type: none;
    }
    .nav ul li {
      float:left;
      position:relative;
      z-index:998;
      display:block;
    }
    .nav ul li a{
      display:block;
      text-decoration:none;
      color:#fff;
      text-align:center;
      font-size:16px;
      padding:0 20px;
    }
    .nav ul li ul {
      display: none;
    }
    .nav ul li ul li{
      width:140px;
      position:static;
      border-right:none !important;
    }
    .nav ul li:hover a {
      color:#fff;
      background: center bottom no-repeat;
    }
    .nav ul li:hover ul {
      display:block;
      position:absolute;
      top:53px; left:0;
    }
    .nav ul li:hover ul li ul {
      display: none;
    }
    .nav ul li:hover ul li a {
      display:block;
      text-align:center;
      line-height:35px;
      background:#11406c;
      padding:0 5px;
      font-size:14px;
      color:white;
      border-top:1px solid black;
    }
    .nav ul li:hover ul li a:hover {
      color:black;
      text-align:center;
      background:#14637D;
    }

    .con {
      width:1200px;
      margin-left:auto;
      margin-right:auto;
    }
    .central{
      border-bottom-width: 2px;
      border-bottom-style: solid;
      border-bottom-color: #6d6d6d;
      height: 75px;
      background-color: #00467f;
    }
    .central ul{
      width: 1040px;
      margin: 0 auto;
    }
    .central ul li{
      float: left;
      width: 200px;
      text-align: center;
      padding:10px 24px;
      position:relative;
    }
    .central ul li span{
      float: left;
      width: 150px;
    }
    .central ul li p{
      float: right;
      width: 93px;
      color: white;
      font-size: 18px;
      line-height: 54px;
    }

    /*.menulink ul li ul {display: none;width:100%;}
    .menulink ul li ul li {height:28px;padding:0;width:50%;float:left;text-align:left;}
    .menulink ul li ul li a {line-height:28px;display:block;font-size:12px;padding-left:12px;}
    .menulink ul li:hover ul {display:block; position:absolute; width:200px; bottom:77px; left:0px; background:rgba(13,89,167,0.7); color:#fff;z-index:9;}
    .menulink ul li:hover ul li:hover a {background:#fff; color:#000;}*/
    .jd{
      background-color: #fff;
      height: 240px;
      padding-top: 30px;
      padding-right: 25px;
      padding-bottom: 30px;
      padding-left: 25px;
      width: 1200px;
    }
    .www{
      float: left;
      width: 300px;
      margin-right: 28px;
    }
    .yw{
      padding-bottom: 5px;
      float: left;
      width: 404px;
      border-right-width: 1px;
      border-right-style: solid;
      border-right-color: #dedede;
      position: relative;
      overflow: hidden;
      margin-left: 15px
    }
    .yw.lm{
      background-repeat: no-repeat;
      background-position: left center;
      height: 26px;
      padding-left: 15px;
      margin-bottom: 10px;
    }
    .yw.lm.mc{
      font-size: 17px;
      line-height: 26px;
      color: #fff;
      background-color: #00467f;
      text-align: center;
    }
    .yw.lm ul li{
      float: left;
      padding-right: 10px;
      padding-left: 10px;
    }
    .yw.plb{

    }
    .yw.plb ul li{
      background-repeat: no-repeat;
      background-position: left center;
      padding-left: 10px;
    }
    .tz{
      float: right;
      width: 380px;
      height:205px;
    }
    .hd{
      height: 30px;
      background-repeat: no-repeat;
      background-position: left center;
      padding-left: 13px;
    }
    .hd ul li{
      border: 1px solid #cdcdcd;
      text-align: center;
      float: left;
      margin-right: 5px;
      padding-right: 10px;
      padding-left: 10px;
      width: 115px;
    }
    .tz.bd{
      padding-top: 10px;
    }
    .tz.bd ul li{
      margin-top: 11px;
      height: 30px;
      overflow: hidden;
    }
    .foot {
      background-color: #3c3c3c;
      text-align: center;
      padding-bottom: 10px;
      background-repeat: repeat-x;
      background-position: left top;
    }
    .foot p{
      font-size: 12px;
      line-height: 27px;
      color: #fff;
    }
    .foot-top{
      width: 1200px;
      margin: 0 auto;
      padding-top: 20px;
    }
    .bq{
      width: 1200px;
      margin: 0 auto;
      border-top: solid 1px #555555;
      overflow:hidden;
      text-align:center;
      line-height:56px;
      color:#fff;
      font-size:14px;
      color:#999;
    }
    .foot-link{
      float:left;
      width:880px;
      margin-bottom:20px;
      height: 120px;
    }
    .foot-link dl{
      float:left;
      width:130px;
      margin-right:40px;
      color: white;
      height: 100px;
    }
    .foot-link dt{
      font-size:16px;
      height:40px;
      line-height:40px;
    }
    .foot-link dt a{
      font-size:16px;
      color:#fff;
      text-align: center;
    }
    .foot-link dd{
      height:40px;
      line-height:32px;
    }
    .foot-link dd a{
      font-size:14px;
      color:#fff;
    }
    .foot-icon{
      float:right;
      width:270px;
    }
    .foot .wb {
      text-align: center;
      padding-top: 15px;
      padding-bottom: 10px;
    }
    .foot .wb img {
      padding-right: 5px;
      padding-left: 5px;
    }
    .foot .wb a{
      position: relative;
    }
    .foot .wb a .ewm{
      display:none;
      position: absolute;
      top: -100px;
      left: 0px;
    }
    .foot .wb a .ewm img{
      height:75px!important;
    }
    .foot .wb a:hover .ewm{
      display:block;
    }
  </style>
</head>
<body style="min-width: 1280px">

<div id="top">
  <div class="top">
    <div class="top-l fl">
      <p>欢迎访问东北林业大学信息与计算机工程学院！ </p>
      <div style="float: right"></div>
    </div>

    <div class="top-r fr">
      <div class="top-link fl">
        <a href="" onclick="">主站首页</a>
        &nbsp;&nbsp;|&nbsp;&nbsp;
        <a href="" onclick="">院长信箱</a>
      </div>
      <div class="ss">
        <button style="color: #3d81b4"><a href="/admin">登录</a></button>

      </div>
    </div>
  </div>
</div>

<div id="menunav">
  <div class="menunav">
    <div class="logo">
      <!-- 网站logo图片地址请在本组件"内容配置-网站logo"处填写 -->
      <img src="resources/mainpictures/xuexiaotubiao.png" height="105" width="800"/>

    </div>

    <div class="clear"></div>
  </div>
</div>
</div>

<div class="nav">
  <div style="width:1200px;margin:0 auto;">
    <ul>
      <li><a href="http://icec.nefu.edu.cn/">首页</a></li>
      <li><a href="#">学院概况</a>
        <ul>
          <li><a href="">学院简介</a></li>
          <li><a href="">学院领导</a></li>
        </ul>
      </li>
      <li><a href="#">专业系部</a>
        <ul>
          <li><a href="">计算机科学与技术</a></li>
          <li><a href="">软件工程</a></li>
          <li><a href="">信息管理与信息系统</a></li>
          <li><a href="">电子信息工程</a></li>
          <li><a href="">通信工程</a></li>
          <li><a href="">实验中心</a></li>
        </ul>
      </li>
      <li><a href="Teacher.html">师资队伍</a>
        <ul>
          <li><a href="szdw/jsjkxyjs1.htm">计算机科学与技术</a></li>
          <li><a href="szdw/rjgc1.htm">软件工程</a></li>
          <li><a href="szdw/xxglyxxxt1.htm">信息管理与信息系统</a></li>
          <li><a href="szdw/jsjjcjyb1.htm">计算机基础教育部</a></li>
          <li><a href="szdw/txgc1.htm">通信工程</a></li>
          <li><a href="szdw/dzxxgc.htm">电子信息工程</a></li>
          <li><a href="szdw/syzx1.htm">实验中心</a></li>
          <li><a href="szdw/kygw.htm">科研岗位</a></li>
        </ul>
      </li>
      <li><a href="#">学科建设</a>
        <ul>
          <li><a href="xkjs/bsxwsqd1.htm">博士学位授权点</a></li>
          <li><a href="xkjs/qrzssxwd1.htm">全日制硕士学位点</a></li>
          <li><a href="xkjs/bssds1.htm">博士生导师</a></li>
          <li><a href="xkjs/sssds1.htm">硕士生导师</a></li>
        </ul>
      </li>
      <li><a href="#">科学研究</a>
        <ul>
          <li><a href="kxyj/kyxm.htm">科研项目</a></li>
          <li><a href="kxyj/cgjjl.htm">成果及奖励</a></li>
          <li><a href="kxyj/yjtdycxpt.htm">研究团队</a></li>
          <li><a href="kxyj/yjtdycxpt.htm">创新平台</a></li>
        </ul>
      </li>
      <li><a href="#">本科教育</a>
        <ul>
          <li><a href="bkjy/zsjz.htm">招生简章</a></li>
          <li><a href="bkjy/pyfa.htm">培养方案</a></li>
        </ul>
      </li>
      <li><a href="#">研究生教育</a>
        <ul>
          <li><a href="yjsjy/zsjz.htm">招生简章</a></li>
          <li><a href="yjsjy/zsxk.htm">招生学科</a></li>
        </ul>
      </li>
      <li><a href="Laboratory.html">实验室</a>
        <ul>
          <li><a href="dwgh/dw/zzjg.htm">创新实验室</a></li>
          <li><a href="dwgh/xt/zzjg.htm">移动开发实验室</a></li>
          <li><a href="acmsys.html">ACM实验室</a></li>
        </ul>
      </li>
      <li><a href="http://job.nefu.edu.cn/">就业指导</a>
        <ul>
          <li><a href="">就业指南</a></li>
          <li><a href="">就业分享</a></li>
          <li><a href="">就业实况</a></li>
        </ul>
      </li>
      <li><a href="wjxz.htm">文件下载</a>
        <ul>
          <li><a href="">最新资讯</a></li>
          <li><a href="">指导方针</a></li>
          <li><a href="">实时政策</a></li>
        </ul>
      </li>
    </ul>
  </div>
</div>

<div class="con">
  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="resources/mainpictures/lunbotuone.jpg" height="400" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
        <img src="resources/mainpictures/lunbotutwo.jpg" height="400" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
        <img src="resources/mainpictures/lunbotuthree.jpg" height="400" class="d-block w-100" alt="...">
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

<div class="con">
  <div class="central">
    <ul>
      <li>
        <a class="hidelink" href="#" target="_blank">
                    <span>

                        <img src="resources/mainpictures/ccyrg.png" height="53" width="53"/> <p>传承与荣光</p>
                    </span>

        </a>
        <!--#endeditable-->
      </li>
      <li>
        <a class="hidelink" href="#" target="_blank">
                        <span>
                            <img src="resources/mainpictures/zsypy.png "height="53" width="53"/> <p>招生与培养</p>
                        </span>
        </a>
        <!--#endeditable-->
      </li>
      <li>
        <a class="hidelink" href="#" target="_blank">
                        <span>
                            <img src="resources/mainpictures/kyyrc.png" height="53" width="53"/><p>科研与人才</p>
                        </span>
        </a>
        <!--#endeditable-->
      </li>
      <li>
        <a class="hidelink" href="#" target="_blank">
                        <span>
                        <img src="resources/mainpictures/fzyzw.png" height="53" width="53"/><p>发展与展望</p>
                        </span>
        </a>
        <!--#endeditable-->
      </li>
      <li>
        <a class="hidelink" href="#" target="_blank">
                        <span>
                        <img src="resources/mainpictures/xxyfw.png" height="53" width="53"/><p>信息与服务</p>
                        </span>
        </a>
        <!--#endeditable-->
      </li>
    </ul>
  </div>
</div>

<div class="con">
  <div class="jd">
    <div class="www">
      <p>


        <img src="resources/mainpictures/acmnews.jpg" height="170" width="280"/>
      <p><a href="news.html">第五届中国大学生程序设计竞赛举办</a></p>
    </div>
    <div class="yw">
      <div class="lm">
        <ul>
          <li class="mc">信息要闻 &nbsp;&nbsp;&nbsp;<a href="">进入新闻网</a> </li>
        </ul>
      </div>
      <div class="plb">
        <ul>
<%--          <li><a href="news.html">信息学院2020年接收推免复试研究生复试与录取办法</a></li>--%>
<%--          <li><a href="">信息学院2020年研究生招生专业目录和考试大纲</a></li>--%>
<%--          <li><a href="">信息学院举办“一流课程双万计划”学术报告</a></li>--%>
<%--          <li><a href="">信息学院成功举办青年授课大赛</a></li>--%>
<%--          <li><a href="">信息学院组织观看《榜样》</a></li>--%>
<%--          <li><a href="">信息学院研究生党支部举办主题党课</a></li>--%>
<%--          <li><a href="">信息学院研究生党支部举办主题党课</a></li>--%>
          <c:forEach items="${news}" var="u" varStatus="v" begin="0" end="5">
            <fmt:formatDate value="${u.showTime}" pattern="yyyy-MM-dd"/></span>
            <li> <a href="/news?flag=find&id=${u.id}">${u.name}</a></li>
          </c:forEach>
        </ul>
      </div>
    </div>
    <div class="tz">
      <div class="hd">
        <ul>
          <li>学术信息</li>
          <li>通知公告</li>
          <li>媒体信息</li>
        </ul>
      </div>
      <div class="bd">
        <ul style="display: block">
          <li><a href="">信息学院举行党建工作材料交流研讨会</a></li>
          <li><a href="">诵读党章找差距，对照党规守初心</a></li>
          <li><a href="">信息学院本科生第二党支部举办主题公益讲座</a></li>
          <li><a href="">信息与计算机工程学院开展党支部书记培训</a></li>
          <li><a href="">信息学院信管专业教工党支部开展主题党日参观活动</a></li>
          <li><a href="">信息学院召开2018级研究生年级大会</a></li>
        </ul>
        <ul style="display: none">
          <li>的风格和健康</li>
          <li></li>
          <li></li>
        </ul>
        <ul style="display: none">
          <li></li>
          <li></li>
          <li></li>
        </ul>
      </div>
    </div>
  </div>
</div>

<div style="height: 25px; width: 1200px; background: #0a0583; margin: 0px auto"></div>

<div class="foot">
  <div class="foot-top">
    <div class="foot-link">
      <dl>
        <dt>
          <a href="">教学科研</a>
        </dt>
        <dd class="test">
          <a>教学成果</a>
        </dd>
      </dl>
      <dl>
        <dt>
          <a href="">管理服务</a>
        </dt>
        <dd>
          <a>党群机构</a>
        </dd>
      </dl>
      <dl>
        <dt>
          <a href="">医疗卫生</a>
        </dt>
        <dd>
          <a>学校医院</a>
        </dd>
      </dl>
      <dl>
        <dt>
          <a href="">人才招聘</a>
        </dt>
        <dd>
          <a>招聘通知</a>
        </dd>
      </dl>
      <dl>
        <dt>
          <a href="">合作交流</a>
        </dt>
        <dd>
          <a>国际合作</a>
        </dd>
      </dl>
    </div>
    <div class="foot-icon">
      <div class="wb">
        <a href="">
          <img src="resources/mainpictures/qq.jpg" height="50" width="50"/>
          <div class="ewm"></div>
        </a>
        <a href="">
          <img src="resources/mainpictures/wechat.png" height="50" width="50"/>
          <div class="ewm"></div>
        </a>
        <a href="">
          <img src="resources/mainpictures/weibo.png" height="50" width="50"/>
          <div class="ewm"></div>
        </a>
        <a href="">
          <img src="resources/mainpictures/andiord.png" height="50" width="50"/>
          <div class="ewm"></div>
        </a>
        <a href="">
          <img src="resources/mainpictures/email.png" height="50" width="50"/>
          <div class="ewm"></div>
        </a>
      </div>
    </div>
  </div>
  <div class="bq">
    <p>
      <font style="font-size: 9pt">
        地址：黑龙江省哈尔滨市香坊区和兴路26号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;邮编：150000&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span style="font-size: 9pt; font-family: 宋体; ">
                    <a href="" target="_blank">
                        <font color="#ffffff">建议意见</font>
                    </a>
                </span>
      </font>
    </p>
    <p>
      <font style="font-size: 9pt">
        版权所有：东北林业大学 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;站点建设与维护：
        <a href="" >
          <font color="white">网络信息中心</font>
        </a>
      </font>
    </p>
  </div>
</div>




</body>
</html>
