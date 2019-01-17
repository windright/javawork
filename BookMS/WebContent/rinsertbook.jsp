<%@ page language="java" contentType="text/html; charset=UTF-8" import="javawork.RooterMs"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>增加新图书</title>
</head>
<body>
<%
		String username = (String) session.getAttribute("username");
		RooterMs root1 = new RooterMs(username);
		String bookid = request.getParameter("bookid");
		String bookname=request.getParameter("bookname");
		String bookpub=request.getParameter("bookpub");
		String booktime=request.getParameter("booktime");
		String bookcate=request.getParameter("bookcate");
		String bookprice=request.getParameter("bookprice");
		
		int result = root1.InsertBook(bookid, bookname, bookpub, booktime, bookcate, bookprice);
		if (result > 0) {
			out.println("插入成功，两秒后跳转");
			response.setHeader("Refresh", "2;URL=rootinfo.jsp");
		} else {
			out.println("插入失败，两秒后重新输入");
			response.setHeader("Refresh", "2;URL=rinputbooknew.jsp");
		}
	%>
</body>
</html>