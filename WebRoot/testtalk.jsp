<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'testtalk.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="js/jquery-3.1.1.js"></script>
<script type="text/javascript">
$(function(){
	var l = $("#page").val()*1-1*1;
	var n = $("#page").val()*1+1*1;
	//alert(l+"+"+n);
    $("#last").attr("href","getTalksByPage.do?pageNo="+l);
	$("#next").attr("href","getTalksByPage.do?pageNo="+n); 
});
</script>
  </head>
  
  <body>
  <input type="hidden" id="page" value="${page}">
  <table>
  <c:forEach var="talk" items="${TALKS}" varStatus="status">
  <tr><td>${status.index+1}&nbsp;</td><td>${talk.context}</td></tr>
  </c:forEach>
  </table>
  <a id="last">上一页</a>&nbsp;${NAVBAR}&nbsp;<a id="next">下一页</a>
  </body>
</html>
