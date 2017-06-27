<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
	<head>
        <meta charset="utf-8">
		<title>sportsgo</title>
		<link href="css/place.css" rel="stylesheet">
        <script src="js/jquery-3.1.1.js"></script>
		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <script src="bootstrap/js/bootstrap.min.js"></script>
		<script src="js/place.js"></script>
	</head>
	<body>
        <div class="container-fluid">
            <div class="row clearfix">
                <div class="col-md-14 column">
                    <div class="carousel slide" id="car-">
                        <ol class="carousel-indicators">
                            <li class="active" data-slide-to="0" data-target="#car-"></li>
                            <li data-slide-to="1" data-target"#car-"></li>
                            <li data-slide-to="2" data-target="#car-"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="item active">
                                <img alt="江安一号球场" src="pic/left_talk.jpg" />
                                <div class="carousel-caption">
                                    <h4>江安一号球场场地信息</h4>
                                    <p>球场个数：    6</p>
                                    <p>剩余个数：    5</p>
                                    <p>收费情况：    免费</p>
                                </div>
                            </div>
                            <div class="item">
                                <img alt="" src="pic/right_date.jpg"/>
                                <div class="carousel-caption">
                                    <h4>场地信息</h4>
                                    <p>fdsafdagjfklg</p>
                                </div>
                            </div>
                            <div class="item">
                                <img alt="" src="pic/left_talk.jpg"/>
                                <div class="carousel-caption">
                                    <h4>场地信息</h4>
                                    <p>hfdjkalh</p>
                                </div>
                            </div>
                        </div>
                        <a class="left carousel-control" href="#car-" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                        </a>
                        <a class="right carousel-control" href="#car-" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!--<script src="js/test.js"></script>-->
	</body>
</html>
