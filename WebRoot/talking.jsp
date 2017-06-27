<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>交流</title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
        <link href="css/talking.css" rel="stylesheet">
        <script src="js/jquery-3.1.1.js"></script>
        <script src="bootstrap/js/bootstrap.js"></script>
        <script src="js/talking.js"></script>  

    </head>
    <body>
        <div id='type' >
            <div id="addInfo" class="btn-lg btn-info active">
                添加帖子
                <p><a target="_self" href="#myWords">
                    <!--触发modal-->
                    <label class="label label-info" data-toggle="modal" data-target="#myWords">+</label></a>
                </p>
            </div>
            <!--发帖model-->
            <div id="myWords" class="modal fade" tabIndex="-1" role="dialog" aria-labelledby="myWordsLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 id="myWordsLabel" class=modal-title>你有什么想法吗？</h4>
                        </div>
                        <div class="modal-body">
                            <form class="form">
                                <input id="my-title" class="form-control" type="text" placeholder="输入您的标题"><br>
                            <span class="label label-info">羽毛球</span>
                            <span class="label label-info">篮球</span>
                            <span class="label label-info">网球</span>
                            <span class="label label-info">跑步</span>
                            <span class="label label-info">其他</span>
                                <br><br>
                                <textarea id="my-content" class="form-control" placeholder="输入您的内容"></textarea>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button id="my-enter" class="btn btn-primary" type="button">提交</button>
                            <button class="btn btn-default" type="button" data-dismiss="modal">关闭</button>
                        </div>
                    </div>
                </div>
            </div>
            <!--评论model-->
            <div id="myComment" class="modal fade" tabIndex="-1" role="dialog" aria-labelledby="myWordsLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 id="myWordsLabel" class=modal-title>不错不错，小伙</h4>
                        </div>
                        <div class="modal-body">
                            <form class="form">
                                <textarea id="my-content" class="form-control" rows="5" placeholder="输入你的评论内容"></textarea>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button class="btn btn-primary" type="submit" >提交</button>
                            <button class="btn btn-default" type="button" data-dismiss="modal">关闭</button>
                        </div>
                    </div>
                </div>
            </div>
 
    <div class="row clearfix">
        <div class="col-md-2 column">
            <ul class="breadcrumb">
                <li>
                    <a>选择运动</a>
                </li>
                <li>
                    <a>羽毛球</a>
                </li>
                <li>
                    <a>篮球</a>
                </li>
                <li>
                    <a>网球</a>
                </li>
                <li>
                    <a>跑步</a>
                </li>
                <li>
                    <a>其他</a>
                </li>
            </ul>
        </div>
        <div class="col-md-6 column">
            <ul id="stickies">
            
            </ul> 
            <div class="col-md-6 column">
                <ul class="pagination">
                	<input type="hidden" id="page" value="${page}">
                	<%-- &nbsp;${NAVBAR}&nbsp; --%>
                    <div id="showpage"></div>
                </ul>
            </div>
        </div>
        <div class="col-md-4 column">
            <div class="media well">
                <a href="#" class="pull-left"><img src="http://ibootstrap-file.b0.upaiyun.com/lorempixel.com/64/64/default.jpg" class="media-object" alt='' /></a>
                <div class="media-body">
                    <h4 class="media-heading">
                        广告
                    </h4> 
                    我们是×××××××，我们是××××××××××××
            Nested media heading
                </div>
            </div>
           <div class="media well">
                <a href="#" class="pull-left">
                    <img src="http://ibootstrap-file.b0.upaiyun.com/lorempixel.com/64/64/default.jpg" class="media-object" alt='' /></a>
                <div class="media-body">
                    <h4 class="media-heading">
                        广告
                    </h4> 
                    我们是×××××××，我们是××××××××××××
                </div>
            </div>
           <div class="media well">
                <a href="#" class="pull-left">
                    <img src="http://ibootstrap-file.b0.upaiyun.com/lorempixel.com/64/64/default.jpg" class="media-object" alt='' /></a>
                <div class="media-body">
                    <h4 class="media-heading">
                        广告
                    </h4> 
                    我们是×××××××，我们是××××××××××××
                </div>
            </div>
           <div class="media well">
                <a href="#" class="pull-left">
                    <img src="http://ibootstrap-file.b0.upaiyun.com/lorempixel.com/64/64/default.jpg" class="media-object" alt='' /></a>
                <div class="media-body">
                    <h4 class="media-heading">
                        广告
                    </h4> 
                    我们是×××××××，我们是××××××××××××
                </div>
            </div>
        </div>

    </div>
    </body>

</html>
