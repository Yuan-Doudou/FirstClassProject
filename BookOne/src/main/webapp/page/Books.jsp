<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="/BookOne/">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>

<style type="text/css">
	td{padding: 15px;border-bottom: 1px solid pink;}
	th{padding: 15px;border-bottom: 1px solid pink;}
	a{color: pink}
</style>
</head>
<body>
<h1>欢迎光临京东书城</h1>
  	<table style="border: 1px solid pink;">
  		<tr>
  		<th>编号</th>
  		<th>标题</th>
  		<th>价格</th>
  		<th>操作</th>
  		</tr>
	  	<c:forEach items="${book }" var="k">
	  	<tr>
			<td name="aa">${k.bookid }</td>
			<td>${k.title }</td>
			<td>${k.price }</td>
			<td id="ku">${k.qty}</td>
			<td id="gou"><a href="javascript:goumai('${k.bookid }')" onclick="return queren()">购买</a></td>
	  	</tr>
			</c:forEach>
	</table>
	<a href="/BookOne/test/BookController/bookd"><input type="button" style="height: 50px;width: 160px;border: 1px solid pink; background-color: pink" value="我的购物车"></a>

	<script src="js/jquery-3.2.1.min.js"></script>
	<script>
	function goumai(temp){
		//alert(temp);
		window.location="/BookOne/test/BookController/boook?bookid="+temp;
		
	}
	
	function queren(){
		
		return confirm("是否购买？");
	}

	/*  $(function(){
		 $("#gou").click(function(){
			 var idd=$("[name=aa]").val();
			 alert(idd);
		 })
	 }); */
	
	</script>
</body>
</html>