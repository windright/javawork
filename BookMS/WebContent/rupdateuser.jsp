<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="javawork.RooterMs" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>更新用户</title>
</head>
<body>
<%
		String username = (String) session.getAttribute("username");
		RooterMs root1 = new RooterMs(username);
		request.setCharacterEncoding("UTF-8");
		String nickname = request.getParameter("nickname");
		String name=request.getParameter("realname");
		String department=request.getParameter("department");
		String profession=request.getParameter("profession");
		String hobby=request.getParameter("hobby");
		String birth=request.getParameter("birth");
		String grade=request.getParameter("grade");
		
		int result = root1.UpdateUserInfo(nickname, name, department, profession, hobby, birth, grade);
		if (result > 0) {
			out.println("更新成功，两秒后跳转");
			response.setHeader("Refresh", "2;URL=userinfo.jsp");
		} else {
			out.println("更新失败，两秒后重新输入");
			response.setHeader("Refresh", "2;URL=rinputupdateuser.jsp");
		}
	%>
</body>
</html>