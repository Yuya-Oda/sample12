<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%--
<%@ page import="ex.Fruit" %>
<% Fruit fruit = (Fruit) request.getAttribute("fruit"); %>
--%>

<%-- JSTLのI18Nタグライブラリの指定 --%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%-- useBeanタグでインスタンスを取得 --%>
<jsp:useBean id="fruit" class="ex.FruitEL" scope="application"></jsp:useBean>


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
	<jsp:getProperty property="fruit" name="name"/>
	の値段は
	<%-- ① 取得したインスタンスは getPropertyタグ内で使用可能 --%>
	<jsp:getProperty property="fruit" name="price"/>
	<%--                        ↓ ② スクリプトレット内でも使用可能 --%>
	<%= String.format("%,d", fruit.getPrice()) %> <%--3桁区切り --%>
	円です。
	</p>
</body>
</html>