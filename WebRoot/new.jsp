<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
    <head>
        <title>new</title>
        <meta charset="utf-8">
		<link href="css/new.css" rel="stylesheet">
		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <script src="js/jquery-3.1.1.js"></script>
		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </head>
    <body> 
        <div class="row clear-fix">
                <div id="ads" clsss="col-md-12 column" >
                    <div class="jumbotron">
                        <h1>全新商区诚邀商家入驻中...</h1>
                        <p>&nbsp;这是一个专属运动大佬们的板块</p>
                        <p>&nbsp;在这里你可以随找到你想要的物件</p>
                    </div>
                </div>
                <div clsss="col-md-12 column">
                    <!--搜索-->
                    <div id="search_store">
                        <div class="input-group">
                            <input class="form-control" type="text" >
                            <span class="input-group-addon">查找</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-12 column">
                    <!--选择-->
                    <div id="choose_store">
                        <a href='#badmiton-to'><u>羽毛球</u></a>
                        <a href='#vollyball-to'><u>网球</u></a>
                        <a href='#basketball-to'><u>篮球</u></a>
                        <a href='#running-to'><u>跑步</u></a>
                        <a href='#other-to'><u>其他</u></a>
                    </div>
                </div>
                <!--幻灯片商品-->
                <div clsss="col-md-12 column">
                    <div id="new-store" class="carousel slide">
                        <ol class="carousel-indicators">
                            <li class="active" data-slide-to="0" data-target="#new-store"></li>
                            <li data-slide-to="1" data-target="#new-store"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="item active">
                                <img src="pic/left_talk.jpg" />
                                <div class="carousel-caption">
                                    <h2>尤尼克斯880全新</h2>
                                    <p>这是简介</p>
                                </div>
                            </div>
                            <div class="item">
                                <img src="pic/right_date.jpg" />
                                <div class="carousel-caption">
                                    <h2>尤尼克斯880全新</h2>
                                    <p>这是简介</p>
                                </div>
                            </div>
                        </div>
                        <a class="left carousel-control" href="#new-store" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                        </a>
                        <a class="right carousel-control" href="#new-store" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                        </a>
                    </div>
                </div>
                <div class="col-md-12 column">
                    <div class="panel panel-default little_thing">
                        <div class="panel-heading">
                            <p class="panel-title">
                                <a href="#badmiton" id="badmiton-to"  data-toggle="collapse" >羽毛球</a>
                            </p>
                        </div>
                        <div id="badmiton" class="panel-collapse collapse">
                            <div class="panel-body">
                                <em>请在下面选择你想要购买的物品</em>
                                <div>
                                    <img src="pic/badminton.jpg">
                                    <img src="pic/badminton.jpg">
                                    <img src="pic/badminton.jpg">
                                </div>
                                <p>some introduction</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12 column">
                    <div class="panel panel-default little_thing">
                        <div class="panel-heading">
                            <p class="panel-title">
                                <a href="#basketball" id="basketball-to" data-toggle="collapse" >篮球</a>
                            </p>
                        </div>
                        <div id="basketball" class="panel-collapse collapse">
                            <div class="panel-body">
                                <em>请在下面选择你想要购买的物品</em>
                                <div>
                                    <img src="pic/badminton.jpg">
                                    <img src="pic/badminton.jpg">
                                    <img src="pic/badminton.jpg">
                                </div>
                                <p>some introduction</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12 column">
                    <div class="panel panel-default little_thing">
                        <div class="panel-heading">
                            <p class="panel-title">
                                <a href="#vollyball" id="vollyball-to" data-toggle="collapse" >网球</a>
                            </p>
                        </div>
                        <div id="vollyball" class="panel-collapse collapse">
                            <div class="panel-body">
                                <em>请在下面选择你想要购买的物品</em>
                                <div>
                                    <img src="pic/badminton.jpg">
                                    <img src="pic/badminton.jpg">
                                    <img src="pic/badminton.jpg">
                                </div>
                                <p>some introduction</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12 column">
                    <div class="panel panel-default little_thing">
                        <div class="panel-heading">
                            <p class="panel-title">
                                <a href="#running"id="running-to" data-toggle="collapse" >跑步</a>
                            </p>
                        </div>
                        <div id="running" class="panel-collapse collapse">
                            <div class="panel-body">
                                <em>请在下面选择你想要购买的物品</em>
                                <div>
                                    <img src="pic/badminton.jpg">
                                    <img src="pic/badminton.jpg">
                                    <img src="pic/badminton.jpg">
                                </div>
                                <p>some introduction</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12 column">
                    <div class="panel panel-default little_thing">
                        <div class="panel-heading">
                            <p class="panel-title">
                                <a href="#other" id="other-to" data-toggle="collapse" >其他</a>
                            </p>
                        </div>
                        <div id="other" class="panel-collapse collapse">
                            <div class="panel-body">
                                <em>请在下面选择你想要购买的物品</em>
                                <div>
                                    <img src="pic/badminton.jpg">
                                    <img src="pic/badminton.jpg">
                                    <img src="pic/badminton.jpg">
                                </div>
                                <p>some introduction</p>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
        

    </body>
</html>
