<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="javawork.UsergetInfo" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>增加图书借阅</title>
</head>
<body>
	<%
		String username = (String) session.getAttribute("username");
		UsergetInfo user1 = new UsergetInfo(username);
		String bookid=request.getParameter("bookid");
		String borrowtime=request.getParameter("borrowtime");
		String rebacktime=request.getParameter("rebacktime");
		
		int result=user1.InsertBorrow(bookid, borrowtime, rebacktime);
		if(result>0){
			out.println("增加借阅成功，两秒后跳转");
			response.setHeader("Refresh", "2;URL=userborrowinfo.jsp");
		}
		else{
			out.println("增加借阅失败，两秒后重新输入");
			response.setHeader("Refresh", "2;URL=userinputborrow.jsp");
		}
	%>
</body>
</html>