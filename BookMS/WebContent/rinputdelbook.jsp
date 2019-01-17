<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>输入待删除图书编号</title>
</head>
<body>
<form action="rdelbook.jsp" method="POST">
图书编号<input type="number" name="bookid" /><br>
<input type="submit" value="提交" />
</form>
</body>
</html>