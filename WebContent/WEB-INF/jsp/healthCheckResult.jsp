<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Health"  %>
<%
//リクエストスコープに保存されたHealthインスタンスを取得
Health health =(Health) request.getAttribute("health");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>スッキリ健康診断</title>
</head>
<body>
<h1>スッキリ健康診断</h1>
<p>
<%-- ★ getterを使用して結果を表示 --%>
<%--身長：<%= health.getHeight() %><br /> --%>
身長：${health.height}<br />

<%--体重：<%= health.getWeight() %><br /> --%>
体重：${health.weight}<br />

<%--BMI：<%= health.getBmi() %><br /> --%>
BMI：${health.bmi}<br />
<%-- ↓ 小数点以下第一位まで表示する方法

BMI:<%= String.format(" %.1f". health.getBmi()) %>← ◎

  ※<%= String.format(" %.1f". ${health.bmi} %> ← ×エラーになる（スクリプト式の中では使えない）

--%>


<%--体型：<%= health.getBodyType() %><br /> --%>
体型：${health.bodyType}<br />

</p>
<a href="/sample12/HealthCheck_EL">戻る</a>
</body>
</html>