<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理员注销</title>
</head>
<body>
<%
session.invalidate();
out.println("管理员注销成功，两秒后跳转登录页面");
response.setHeader("Refresh", "2;URL=login.jsp");
%>
</body>
</html>