<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="javawork.UsergetInfo" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>按类别查询图书信息</title>
</head>
<body>
	<%
		String username = (String) session.getAttribute("username");
		UsergetInfo user1 = new UsergetInfo(username);
		String bookcate=request.getParameter("inputbookcate");
		String[][] bookcateinfo = user1.getBookcateInfo(bookcate);
		out.print("<table width='800' border='1'>");
		out.print("<tr>");
		out.print("<th>图书编号</th>");
		out.print("<th>图书</th>");
		out.print("<th>出版社</th>");
		out.print("<th>出版日期</th>");
		out.print("<th>类别</th>");
		out.print("<th>价格</th>");
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