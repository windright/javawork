<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="javawork.RooterMs" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>查询所有用户信息</title>
</head>
<body>
	<%
		String username = (String) session.getAttribute("username");
	RooterMs root1 = new RooterMs(username);
		String[][] booknameinfo = root1.getUserinfo();
		out.print("<table width='800' border='1'>");
		out.print("<tr>");
		out.print("<th>用户名</th>");
		out.print("<th>姓名</th>");
		out.print("<th>学号</th>");
		out.print("<th>院系</th>");
		out.print("<th>专业</th>");
		out.print("<th>爱好</th>");
		out.print("<th>出生日期</th>");
		out.print("<th>年级</th>");
		out.print("</tr>");

		for (int i = 0; i < booknameinfo.length; i++) {
			out.print("<tr>");
			for (int j = 0; j < booknameinfo[i].length; j++) {
				out.print("<td>" + booknameinfo[i][j] + "</td>");
			}
			out.print("</tr>");
		}

		out.print("</table>");
	%>
</body>
</html>