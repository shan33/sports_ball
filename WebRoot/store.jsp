<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="author" content="xulanshan">
        <title>欢迎来到特色展示区</title>
        <link rel="stylesheet" href="css/store.css">
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <script src="js/jquery-3.1.1.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="js/store.js"></script>
        <script src="js/angular.min.js"></script>
    </head>
    <body>
        <slide id="left" class="well">
            <ul class="nav nav-tabs">
                <li class="">
                    <a href="#" data-toggle="tab">全新</a>
                </li>
                <li>
                <a href="#" data-toggle="tab">二手</a>
                </li>
                <li>
                    <a href="#" data-toggle="tab">我要加入</a>
                </li>
                <li>
                    <a href="index.jsp">回到主页</a>
                </li>
            </ul>
        </slide>
        <section id="right" class="well well-lg">
            <iframe frameborder="0" src="new.jsp" />
    </body>
</html>
                    
                    
                    
