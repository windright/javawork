<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="javawork.RooterMs" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>删除用户</title>
</head>
<body>
	<%
		String username = (String) session.getAttribute("username");
		RooterMs root1 = new RooterMs(username);
		String nickname = request.getParameter("username");

		int result = root1.DeleteUser(nickname);
		if (result > 0) {
			out.println("删除成功，两秒后跳转");
			response.setHeader("Refresh", "2;URL=rootinfo.jsp");
		} else {
			out.println("删除失败，两秒后重新输入");
			response.setHeader("Refresh", "2;URL=inputdeluser.jsp");
		}
	%>

</body>
</html>