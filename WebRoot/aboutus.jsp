<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<link href="css/aboutus.css" rel="stylesheet">
        <script src="js/jquery-3.1.1.js"></script>
		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <script src="bootstrap/js/bootstrap.min.js"></script>
		<script src="js/aboutus.js"></script>
        <meta charset="utf-8">
		<title>sportsgo</title>
	</head>
	<body>
         <div class="contactus">
            <div class="contact">
                <p><a name="contact"><b>联系我们</b></a></p>
            </div>
            <div class="ul">
            <ul>
            <dd><input type="text" placeholder="输入您的名称" class="input" onclick="click()"/></dd>
            <dd><input type="text" placeholder="输入您的电话"  class="input"/></dd> 
            <dd><input type="text" placeholder="输入您的邮箱"  class="input"/></dd>
            <dd><textarea></textarea></dd>
            <dd>
                <input type="submit" name= "code" style="margin-left:330px;" value="send" 
                placeholder="您的联系事项（可以提意见给我们，也可以输入您要发布的内容提供给后台"/>
            </dd>
            </ul>
            </div>
                                                                                                                                     </div>
	</body>
</html>
