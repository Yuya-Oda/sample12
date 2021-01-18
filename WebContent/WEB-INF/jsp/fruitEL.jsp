<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- JSTLのI18Nタグライブラリの指定 --%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%--
<%@ page import="ex.Fruit" %>
<% Fruit fruit = (Fruit) request.getAttribute("fruit"); %>
--%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>第7章 練習問題</title>
</head>
<body>
	<h1>第7章 練習問題</h1>
	<p>

	<%--<%= fruit.getName() %>の値段は<%= fruit.getPrice() %>円です。--%>
	${applicationScope.fruit.name}の値段は

	<%-- 金額を三桁区切りで表示 --%>
	<fmt:formatNumber value="${applicationScope.fruit.price}"
	pattern="###,###" />円です。

	</p>
</body>
</html>