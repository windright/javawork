<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.Calendar,javawork.Sqlconnet" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户主页面</title>
<link href="css/usermain.css" rel="stylesheet" type="text/css">
</head>

<body>
<a href="userinfo.jsp" target="view_user">个人信息</a><br>
<a href="userinputbookname.jsp" target="view_user">按名字查询图书信息</a><br>
<a href="userinputbookcate.jsp" target="view_user">按类别查询图书信息</a><br>
<a href="userborrowinfo.jsp" target="view_user">查询借阅信息</a><br>
<a href="userinputborrow.jsp" target="view_user">增加借阅图书</a><br>
<a href="userinputreback.jsp" target="view_user">归还已借书籍</a><br>
<a href="userinputnewpwd.jsp" target="view_user">修改个人密码</a><br>
<a href="userlogout.jsp" target="_top">注销</a><br>

</body>
</html>