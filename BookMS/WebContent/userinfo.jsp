<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="javawork.UsergetInfo" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>个人信息</title>
</head>
<body>
	<%
		String username = (String) session.getAttribute("username");
		UsergetInfo user1 = new UsergetInfo(username);
		String[] user1info=user1.getUserinfo();
		out.print("<table width='400' border='0'>");
		out.print("<tr>");
		out.print("<td>用户名</td>");
		out.print("<td>"+user1info[0]+"</td>");
		out.print("</tr>");
		
		out.print("<tr>");
		out.print("<td>姓名</td>");
		out.print("<td>"+user1info[1]+"</td>");
		out.print("</tr>");
		
		out.print("<tr>");
		out.print("<td>学号</td>");
		out.print("<td>"+user1info[2]+"</td>");
		out.print("</tr>");
		
		out.print("<tr>");
		out.print("<td>院系</td>");
		out.print("<td>"+user1info[3]+"</td>");
		out.print("</tr>");
		
		out.print("<tr>");
		out.print("<td>专业</td>");
		out.print("<td>"+user1info[4]+"</td>");
		out.print("</tr>");
		
		out.print("<tr>");
		out.print("<td>爱好</td>");
		out.print("<td>"+user1info[5]+"</td>");
		out.print("</tr>");
		
		out.print("<tr>");
		out.print("<td>出生日期</td>");
		out.print("<td>"+user1info[6]+"</td>");
		out.print("</tr>");
		
		out.print("<tr>");
		out.print("<td>年级</td>");
		out.print("<td>"+user1info[7]+"</td>");
		out.print("</tr>");
		out.print("</table>");
	%>

</body>
</html>