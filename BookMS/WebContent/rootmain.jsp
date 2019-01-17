<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.Calendar,javawork.Sqlconnet" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理员主页面</title>
<link href="css/usermain.css" rel="stylesheet" type="text/css">
</head>

<body>
<a href="rootinfo.jsp" target="view_root">管理员信息</a><br>
<a href="inputnewuser.jsp" target="view_root">增加用户</a><br>
<a href="inputdeluser.jsp" target="view_root">删除用户（按用户名）</a><br>
<a href="rselectuserinfo.jsp" target="view_root">查询所有用户信息</a><br>
<a href="rinputusername.jsp" target="view_root">查询用户信息（按用户名）</a><br>
<a href="rinputupdateuser.jsp" target="view_root">修改用户信息</a><br>
<a href="rinputbooknew.jsp" target="view_root">增加图书</a><br>
<a href="rinputdelbook.jsp" target="view_root">删除图书</a><br>
<a href="selectbookinfo.jsp" target="view_root">查询图书信息</a><br>
<a href="userinputbookname.jsp" target="view_root">按名字查询图书信息</a><br>
<a href="userinputbookcate.jsp" target="view_root">按类别查询图书信息</a><br>
<a href="rinputupdatebookid.jsp" target="view_root">修改图书信息</a><br>
<a href="rootlogout.jsp" target="_top">注销</a><br>
</body>
</html>