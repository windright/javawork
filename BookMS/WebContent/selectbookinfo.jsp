<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="javawork.RooterMs" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>查询图书信息</title>
</head>
<body>
	<%
		String username = (String) session.getAttribute("username");
		RooterMs root1 = new RooterMs(username);
		String bookname = request.getParameter("inputbookname");
		String[][] booknameinfo = root1.getBookInfo();
		out.print("<table width='800' border='1'>");
		out.print("<tr>");
		out.print("<th>图书编号</th>");
		out.print("<th>图书</th>");
		out.print("<th>出版社</th>");
		out.print("<th>出版日期</th>");
		out.print("<th>类别</th>");
		out.print("<th>价格</th>");
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