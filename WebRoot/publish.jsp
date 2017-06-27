<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
    <head>
        <title>join_sale</title>
        <meta charset="utf-8">
		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="css/publish.css" rel="stylesheet">
        <script src="js/jquery-3.1.1.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="row clearfix">
            <div class="col-md-12 column">
                <blockquote>
                    <h2>生命在于运动</h2>
                    <small>someone</small>
                </blockquote>
            </div>
            <div class="col-md-4 column">
                <img alt="140x140" src="http://ibootstrap-file.b0.upaiyun.com/lorempixel.com/140/140/default.jpg" />
            </div>
            <div class="col-md-4 column">
                <img alt="140x140" src="http://ibootstrap-file.b0.upaiyun.com/lorempixel.com/140/140/default.jpg" />
            </div>
            <div class="col-md-4 column">
                <img alt="140x140" src="http://ibootstrap-file.b0.upaiyun.com/lorempixel.com/140/140/default.jpg" />
            </div>
            <div class="col-md-12 column">
                <form role="form">
                    <div class="form-group">
                         <label for="style">商品类型</label>
                         <select id="style" class="form-control" >
                            <option>全新</option>
                            <option>9～8成新</option>
                            <option>7成新</option>
                            <option>二手倒卖</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="price">价格</label>
                        <input type="text" id="price" class="form-control" placeholder="输入购买价格">
                    </div>
                    <div class="form-group">
                        <label for="date">使用时间</label>
                        <input type="text" id="date" class="form-control" placeholder="输入购买时间">
                    </div>
                    <textarea id="other" class="form-control" placeholder="备注"></textarea>
                    <button type="submit" class="btn btn-default">提交申请</button>
                </form>
            </div>
        </div>
    </body>
</html>

    </body>
</html>
