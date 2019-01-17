<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="javawork.RooterMs" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>输入新用户信息</title>

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

<script type="text/javascript">
	function checkpasswd() {
		var pwd1 = document.getElementsByName("passwd1")[0];
		var pwd2 = document.getElementsByName("passwd2")[0];
		var value1 = pwd1.value;
		var value2 = pwd2.value;
		if (value1 != value2) {
			alert("两次密码输入不一致");
			return false;
		}
		return true;
	}
</script>
</head>

<body>
	<%
		String username = (String) session.getAttribute("username");
		RooterMs root1 = new RooterMs(username);
		String nickname = request.getParameter("username");
		String[] userinfo = root1.getUserinfo(nickname);
	%>
	<form action="rupdateuser.jsp" method="post"
		onsubmit="return checkpasswd()">
		<div class="tableRow">
			<p>用户名</p>
			<p>
				<input type="text" name="nickname" value=<%out.print(userinfo[0]);%> required="required"
					readonly="readonly" />
			</p>
		</div>
		<div class="tableRow">
			<p>姓名</p>
			<p>
				<input type="text" name="realname" value=<%out.print(userinfo[1]);%> required="required"
					required="required" />
			</p>
		</div>
		<div class="tableRow">
			<p>院系</p>
			<p>
				<select name="department">
					<%
						String value1 = userinfo[3];
					%>
					<option value="culture" <%if(value1.equals("culture"))out.print("selected");%>>文学院</option>
					<option value="information science&engineering" <%if(value1.equals("information science&engineering"))out.print("selected");%>>信息院</option>
					<option value="physics" <%if(value1.equals("physics"))out.print("selected");%>>物理院</option>
					<option value="math" <%if(value1.equals("math"))out.print("selected");%>>数学院</option>
					<option value="music" <%if(value1.equals("music"))out.print("selected");%>>音乐学院</option>
				</select>
			</p>
		</div>
		<div class="tableRow">
			<p>专业</p>
			<p>
				<select name="profession">
				<%
						String value2 = userinfo[4];
					%>
					<optgroup label="文学院">
						<option value="culture" <%if(value2.equals("culture"))out.print("selected");%>>文学</option>
					</optgroup>
					<optgroup label="信息院">
						<option value="computer sicence" <%if(value2.equals("computer sicence"))out.print("selected");%>>计算机科学</option>
					</optgroup>
					<optgroup label="物理院">
						<option value="nuclear physics" <%if(value2.equals("nuclear physics"))out.print("selected");%>>核物理</option>
					</optgroup>
					<optgroup label="数学院">
						<option value="math" <%if(value2.equals("math"))out.print("selected");%>>数学</option>
					</optgroup>
					<optgroup label="音乐学院">
						<option value="classic music" <%if(value2.equals("classic music"))out.print("selected");%>>古典音乐</option>
					</optgroup>
				</select>
			</p>
		</div>
		<div class="tableRow">
			<p>爱好</p>
			<p>
				<input type="text" name="hobby" value=<%out.print(userinfo[5]);%> required="required" />
			</p>
		</div>
		<div class="tableRow">
			<p>出生日期</p>
			<p>
				<input type="date" name="birth" value=<%out.print(userinfo[6]);%> required="required" />
			</p>
		</div>
		<div class="tableRow">
			<p>年级</p>
			<p>
			<%String value3=userinfo[7]; %>
				<label for="radio1"> <input type="radio" name="grade"
					id="radio1" value="1" required="required" <%if(value3.equals("1"))out.print("checked");%> /> 大一
				</label> <br> <label for="radio2"> <input type="radio"
					name="grade" id="radio2" value="2" required="required" <%if(value3.equals("2"))out.print("checked");%> /> 大二
				</label> <br> <label for="radio3"> <input type="radio"
					name="grade" id="radio3" value="3" required="required" <%if(value3.equals("3"))out.print("checked");%> /> 大三
				</label> <br> <label for="radio4"> <input type="radio"
					name="grade" id="radio4" value="4" required="required" <%if(value3.equals("4"))out.print("checked");%> /> 大四
				</label>
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