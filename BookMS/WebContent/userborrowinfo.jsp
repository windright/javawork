<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="javawork.UsergetInfo" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>查询借阅图书</title>
</head>
<body>
	<%
		String username = (String) session.getAttribute("username");
		UsergetInfo user1 = new UsergetInfo(username);
		String[][] bookcateinfo = user1.getUserborrowInfo();
		out.print("<table width='800' border='1'>");
		out.print("<tr>");
		out.print("<th>借阅编号</th>");
		out.print("<th>用户名</th>");
		out.print("<th>学号</th>");
		out.print("<th>图书名</th>");
		out.print("<th>图书编号</th>");
		out.print("<th>借阅日期</th>");
		out.print("<th>归还日期</th>");
		out.print("</tr>");

		for (int i = 0; i < bookcateinfo.length; i++) {
			out.print("<tr>");
			for (int j = 0; j < bookcateinfo[i].length; j++) {
				out.print("<td>" + bookcateinfo[i][j] + "</td>");
			}
			out.print("</tr>");
		}

		out.print("</table>");
	%>
</body>
</html>