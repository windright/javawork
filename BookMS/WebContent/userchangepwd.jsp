<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="javawork.UsergetInfo" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String username = (String) session.getAttribute("username");
		UsergetInfo user1 = new UsergetInfo(username);
		String passwd1 = request.getParameter("passwd1");

		int result = user1.UpdateUserPasswd(passwd1);
		if (result > 0) {
			out.println("修改密码成功，两秒后跳转");
			response.setHeader("Refresh", "2;URL=userinfo.jsp");
		} else {
			out.println("修改密码失败，两秒后重新输入");
			response.setHeader("Refresh", "2;URL=userinputnewpwd.jsp");
		}
	%>
</body>
</html>