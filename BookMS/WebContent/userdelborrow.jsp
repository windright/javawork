<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="javawork.UsergetInfo" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>归还图书</title>
</head>
<body>
	<%
		String username = (String) session.getAttribute("username");
		UsergetInfo user1 = new UsergetInfo(username);
		String borrowid = request.getParameter("borrowid");

		int result = user1.DeleteBorrow(borrowid);
		if (result > 0) {
			out.println("归还成功，两秒后跳转");
			response.setHeader("Refresh", "2;URL=userborrowinfo.jsp");
		} else {
			out.println("归还失败，两秒后重新输入");
			response.setHeader("Refresh", "2;URL=userinputreback.jsp");
		}
	%>
</body>
</html>