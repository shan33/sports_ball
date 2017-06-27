<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
    <head>
        <title>old</title>
        <meta charset="utf-8">
		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="css/old.css" rel="stylesheet">
        <script src="js/jquery-3.1.1.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </head>
    <body>
            <div class="row clearfix">
                <div class="col-lg-12 column">
                    <div class="jumbotron">
                        <h1>闲置</h1>
                        <p>你阔以在这里置换你的闲置物品或者卖个小钱哦～</p>
                        <a class="btn btn-primary btn-large" href="#join_sale">我也有闲置</a>
                    </div>
                </div>
                <div class="col-md-4 column">
                    <div class="well well-lg">
                        这是广告区域
                    </div>
                </div>
                <div class="col-md-8 column">
                    <ul id="second_hand">
                         
                    </ul>
                    <ul class="pagination">
                        <li><a href="#">前一页</a></li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">...</a></li>
                        <li><a href="#">后一页</a></li>
                    </ul>
                </div>
            </div>
        <script src="js/old.js"></script>
    </body>
</html>

