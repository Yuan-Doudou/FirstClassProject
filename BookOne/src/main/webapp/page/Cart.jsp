<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<base href="/BookOne/">
</head>
<body>

		<h1>您的购物车</h1>
		<table style="border: 1px solid pink;">
  		<tr>
  		<th>购物车编号</th>
  		<th>书编号</th>
  		<th>标题</th>
  		<th>数量</th>
  		
  		</tr>
	  	<c:forEach items="${book }" var="k">
	  	<tr>
			<td >${k.cartid }</td>
			<td>${k.bookid }</td>
			<td>${k.title }</td>
			<td>${k.qty }</td>
			<td><a href="javascript:quxiao('${k.bookid }')" style="color: pink">取消购买</a></td>
			
	  	</tr>
			</c:forEach>
	</table>
	<a href="javascript:qing()" style="color: pink">清空购物车</a>
	<a href="javascript:shou()" style="color: pink">首页</a>
	<script src="js/jquery-3.2.1.min.js"></script>
	<script>
	function qing(){
		window.location="/BookOne/test/BookController/delete";
	}
	function quxiao(temp){
		window.location="/BookOne/test/BookController/deleteone?bookid="+temp;
	}
	function shou(){
		window.location="/BookOne/test/BookController/bookk";
	}
	
	
	
	
	</script>
</body>
</html>