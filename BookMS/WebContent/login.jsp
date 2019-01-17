<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>图书管理系统登录</title>
<link href="css/register.css" rel="stylesheet" type="text/css">
</head>
<body>
	<header> 图书管理系统用户登录</header>
	<form action="ServLogin" method="post">
		<div class="tableRow">
			<p>用户名</p>
			<p>
				<input type="text" name="username" required="required" />
			</p>
		</div>
		<div class="tableRow">
			<p>密码</p>
			<p>
				<input type="password" name="userpasswd" required="required" />
			</p>
		</div>
		<div class="tableRow">
			<p>登录方式</p>
			<p>
				<label for="logintype1"> <input type="radio" name="logintype"
					id="logintype1" value="1" required="required" checked="checked" /> 普通用户登录
				</label> <br> <label for="logintype2"> <input type="radio"
					name="logintype" id="logintype2" value="2" required="required" /> 管理员登录
				</label>
			</p>
		</div>
		<div class="tableRow">
			<p></p>
			<p class="bottomrow">
				<input type="submit" value="登录" /><a href="register.jsp">注册请点击</a>
			</p>
		</div>
	</form>
</body>
</html>