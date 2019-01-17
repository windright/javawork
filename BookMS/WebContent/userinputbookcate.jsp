<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>选择图书类别</title>
</head>
<body>
<form action="selectbookforcate.jsp" action="POST">
请选择待查询图书类别
<select name="inputbookcate">
        <option value="shaoer">少儿类</option>
        <option value="wenxue">文学类</option>
        <option value="keji">科技类</option>
        <option value="yinyue">音乐类</option>
        <option value="meishu">美术类</option>
      </select>
<input type="submit" value="提交">
</form>
</body>
</html>