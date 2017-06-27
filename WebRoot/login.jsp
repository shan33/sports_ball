<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <meta name="author" content="xulanshan">
    <title>欢迎登录</title>
    <link href="css/login.css" rel="stylesheet">
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
    <script src="js/jquery-3.1.1.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
    <script src="js/login.js"></script>

</head>
<body>
<!--模态框-->
    <nav class="nav nav-pills">
        <li id="login_rel" class="active"><a href="#login_panel">登录</a></li>
        <li id="register_rel" >
            <a href="#register_panel">注册</a></li>
        <li class="disabled"><a href="#visitor_panel">游客</a></li>
    </nav>

    <ul>
        <li class="pull-left">
            <div id="login_panel" class="panel panel-default">
                <div class="panel-heading"><h3 class="panel-title">登录您的信息</h3></div>
                <div class="panel-body">
                    <form class="form-horizontal" role="form">
                        <div class="form-group">
                            <label class="sr-only">名称</label>
                            <div class="col-sm-5" required>
                                <!-- <span class="input-group-addon glyphicon glyphicon-user"></span>-->
                                <input type="text" class="form-control input-lg " v-bind:class="[isActive,error]" id="your_name" name="your_name" placeholder="输入您的名称">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="label label-info sr-only">密码</label>
                            <div class="col-sm-5" required>
                                <!-- <span class="input-group-addon glyphicon glyphicon-play-circle"></span>-->
                                <input type="password" class="form-control input-lg" v-bind:class="[isActive,error]" id="your_password" name="your_password" placeholder="输入您的密码">
                            </div>
                        </div>
                        <div class="form-group col-sm-10">
                            <input id="my_login" type="submit" value="√" class="btn btn-lg btn-primary">
                        </div>
                    </form>
                </div>
                <div class="panel-footer">
                    <label class="label label-info">未有账号，选择<a href="#register_panel">注册</a></label>
                </div>
            </div>
        </li>
        <li class="pull-left">
            <div id="register_panel" class="panel panel-default">
                    <div class="panel-heading"><h3 class="panel-title">注册您的信息</h3></div>
                    <div class="panel-body">
                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label class="sr-only">名称</label>
                                <div class="col-sm-5" required>
                                    <!-- <span class="glyphicon glyphicon-user input-group-addon"></span> -->
                                    <input id="re_name" class="input-lg form-control" v-bind:class="[isActive,error]" name="re_name" type="text"  placeholder="输入您的名称">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="label label-info sr-only">密码</label>
                                <div class="col-sm-5" required>
                                    <input type="password" class="form-control input-lg" v-bind:class="[isActive,error]" id="re_password1" name="re_password" placeholder="输入您的密码">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label sr-only">再次输入密码</label>
                                <div class="col-sm-5" required>
                                    <input type="password" class="form-control input-lg" v-bind:class="[isActive,error]"id="re_password_again1" name="re_password_again" placeholder="再次输入您的密码">
                                </div>
                            </div>
                            <select class="form-group col-sm-10">
                                <option >学校</option>
                                <option >四川大学</option>
                                <option >重庆大学</option>
                            </select>
                            <br>
                            <select class="form-group col-sm-10">
                                <option >学院</option>
                                <option >计算机</option>
                                <option >软件工程</option>
                            </select>
                            
                            <div class="col-sm-10 form-group">
                                <input id="your_agree" name="your_agree" type="checkbox" checked>同意我们的<a class="text-info" href="#">条款</a>
                            </div>
                            <div class="form-group col-sm-10">
                                <input id="regi_btn" type="submit" value="√" class="btn btn-lg btn-primary">
                            </div>
                        </form>
                    </div>
                    <div class="panel-footer">
                    </div>
            </div>
        </li>
    <ul>

</body>
</html>
