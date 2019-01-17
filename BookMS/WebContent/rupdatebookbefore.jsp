<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="javawork.RooterMs" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>输入更新图书信息</title>

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
	<%
		String username = (String) session.getAttribute("username");
		RooterMs root1 = new RooterMs(username);
		String bookid = request.getParameter("bookid");
		String[] bookinfo = root1.getBookIdInfo(bookid);
	%>
	<form action="rupdatebook.jsp" method="post">
		<div class="tableRow">
			<p>图书编号</p>
			<p>
				<input type="text" name="bookid" required="required"
					value=<%out.print(bookinfo[0]);%> readonly="readonly" />
			</p>
		</div>
		<div class="tableRow">
			<p>图书名</p>
			<p>
				<input type="text" name="bookname" value=<%out.print(bookinfo[1]);%> required="required" />
			</p>
		</div>
		<div class="tableRow">
			<p>出版社</p>
			<p>
				<input type="text" name="bookpub" value=<%out.print(bookinfo[2]);%> required="required" />
			</p>
		</div>
		<div class="tableRow">
			<p>出版时间</p>
			<p>
				<input type="date" name="booktime" value=<%out.print(bookinfo[3]);%> required="required" />
			</p>
		</div>
		<div class="tableRow">
			<p>图书类型</p>
			<p>
				<select name="bookcate">
				<%String value1=bookinfo[4]; %>
					<option value="shaoer" <%if(value1.equals("shaoer"))out.print("selected");%>>少儿类</option>
					<option value="wenxue" <%if(value1.equals("wenxue"))out.print("selected");%>>文学类</option>
					<option value="keji" <%if(value1.equals("keji"))out.print("selected");%>>科技类</option>
					<option value="yinyue" <%if(value1.equals("yinyue"))out.print("selected");%>>音乐类</option>
					<option value="meishu" <%if(value1.equals("meishu"))out.print("selected");%>>美术类</option>
				</select>
			</p>
		</div>
		<div class="tableRow">
			<p>图书价格</p>
			<p>
				<input type="number" name="bookprice" value=<%out.print(bookinfo[5]);%> required="required" />
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