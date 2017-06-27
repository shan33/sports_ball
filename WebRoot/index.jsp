<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<link href="css/index.css" rel="stylesheet">
        <script src="js/jquery-3.1.1.js"></script>
		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <script src="bootstrap/js/bootstrap.min.js"></script>
		<script src="js/index.js"></script>
        <meta charset="utf-8">
		<title>sportsgo</title>
	</head>
	<body>
	 <!--主页 第一页-->
	<c:if test="${USER==null}">
        <div><u data-toggle='modal' data-target="#index-login">登录</u> 
    </c:if>
    <c:if test="${USER!=null}">
    	<div><u data-toggle='modal' data-target="#index-login">${USER}</u> 
    </c:if>
        || <u>商城</u> </div>
        <!--page one-->
		<slide id="my_info" class="info">
        </slide>
        <div  id="badmiton"><img src="pic/badminton.jpg"></div>
        <!--model-->
        <div id="index-login" class="modal fade" tabIndex="-1" role="dialog" aria-labelledby="myWordsLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-header">
                    <label class="label label-info">请登录您的账号</label>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-content">
                    <div class="modal-body">
                        <iframe src="login.html" frameborder="0" index="0"></iframe>
                    </div>
                </div>
            </div>
        </div>
		<div id="left" class="main">
            <p class="p_center"></p>
        </div>
		<div id="middle" class="main">
            <img src="pic/sanchuang_net.jpg"/>
        </div>
		<div id="right" class="main">
            <p class="p_center"></p>
        </div>
        
        <!--场地信息 第二页-->
        <div id="two_page" class="page"> 
            <iframe src="place.jsp" frameborder="0" index="0"></iframe>
            <p>场地信息</p>
        </div>
        <!--关于我们 第三页-->
        <div id="three_page" class="page">
            <iframe src="aboutus.jsp" frameborder="0" index="0"></iframe>
        </div>
	</body>
</html>
