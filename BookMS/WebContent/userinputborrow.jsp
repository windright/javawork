<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>输入借阅信息</title>
</head>
<body>
<form action="useraddborrow.jsp" method="POST">
图书编号<input type="text" name="bookid" /><br>
借阅日期<input type="date" name="borrowtime" /><br>
归还日期<input type="date" name="rebacktime" /><br>
<input type="submit" value="提交" />
</form>
</body>
</html>