<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>输入新图书信息</title>

<style type="text/css">
form {
	display: table;
	padding: 10px;
	border: #7e7e7e thin dotted;
	background-color: #e1ceb8;
}
div.tableRow {
	display: table-row;
}
div.tableRow p {
	display: table-cell;
	vertical-align: top;
	padding: 3px;
}
div.tableRow p:first-child {
	text-align: right;
}
</style>

</head>

<body>
	<form action="rinsertbook.jsp" method="post">
		<div class="tableRow">
			<p>图书编号</p>
			<p>
				<input type="text" name="bookid" required="required" />
			</p>
		</div>
		<div class="tableRow">
			<p>图书名</p>
			<p>
				<input type="text" name="bookname" required="required" />
			</p>
		</div>
		<div class="tableRow">
			<p>出版社</p>
			<p>
				<input type="text" name="bookpub" required="required" />
			</p>
		</div>
		<div class="tableRow">
			<p>出版时间</p>
			<p>
				<input type="date" name="booktime" required="required" />
			</p>
		</div>
		<div class="tableRow">
			<p>图书类型</p>
			<p>
				<select name="bookcate">
					<option value="shaoer">少儿类</option>
					<option value="wenxue">文学类</option>
					<option value="keji">科技类</option>
					<option value="yinyue">音乐类</option>
					<option value="meishu">美术类</option>
				</select>
			</p>
		</div>
		<div class="tableRow">
			<p>图书价格</p>
			<p>
				<input type="number" name="bookprice" required="required" />
			</p>
		</div>
		<div class="tableRow">
			<p></p>
			<p class="bottomrow">
				<input type="submit" value="提交" />
			</p>
		</div>
	</form>
</body>
</html>