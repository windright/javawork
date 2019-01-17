<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<form action="ServNewuser" method="post"
		onsubmit="return checkpasswd()">
		<div class="tableRow">
			<p>用户名</p>
			<p>
				<input type="text" name="nickname" required="required"
					pattern="^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[_])[a-zA-Z0-9_]*$"
					oninvalid="setCustomValidity('用户名由字母，数字，下划线组成')"
					oninput="setCustomValidity('')" />
			</p>
		</div>
		<div class="tableRow">
			<p>姓名</p>
			<p>
				<input type="text" name="realname" required="required" />
			</p>
		</div>
		<div class="tableRow">
			<p>密码</p>
			<p>
				<input type="password" name="passwd1" required="required"
					pattern="^(?=.*[a-z])(?=.*[A-Z]).*$"
					oninvalid="setCustomValidity('密码由必须包含大小写字母')"
					oninput="setCustomValidity('')" />
			</p>
		</div>
		<div class="tableRow">
			<p>再次输入密码</p>
			<p>
				<input type="password" name="passwd2" required="required"
					pattern="^(?=.*[a-z])(?=.*[A-Z]).*$"
					oninvalid="setCustomValidity('密码由必须包含大小写字母')"
					oninput="setCustomValidity('')" />
			</p>
		</div>
		<div class="tableRow">
			<p>学号</p>
			<p>
				<input type="number" name="studentid" min="320150000000"
					max="320150999999" required="required" />
			</p>
		</div>
		<div class="tableRow">
			<p>院系</p>
			<p>
				<select name="department">
					<option value="culture">文学院</option>
					<option value="information science&engineering">信息院</option>
					<option value="physics">物理院</option>
					<option value="math">数学院</option>
					<option value="music">音乐学院</option>
				</select>
			</p>
		</div>
		<div class="tableRow">
			<p>专业</p>
			<p>
				<select name="profession">
					<optgroup label="文学院">
						<option value="culture">文学</option>
					</optgroup>
					<optgroup label="信息院">
						<option value="computer sicence">计算机科学</option>
					</optgroup>
					<optgroup label="物理院">
						<option value="nuclear physics">核物理</option>
					</optgroup>
					<optgroup label="数学院">
						<option value="math">数学</option>
					</optgroup>
					<optgroup label="音乐学院">
						<option value="classic music">古典音乐</option>
					</optgroup>
				</select>
			</p>
		</div>
		<div class="tableRow">
			<p>爱好</p>
			<p>
				<input type="text" name="hobby" required="required" />
			</p>
		</div>
		<div class="tableRow">
			<p>出生日期</p>
			<p>
				<input type="date" name="birth" required="required" />
			</p>
		</div>
		<div class="tableRow">
			<p>年级</p>
			<p>
				<label for="radio1"> <input type="radio" name="grade"
					id="radio1" value="1" required="required" /> 大一
				</label> <br> <label for="radio2"> <input type="radio"
					name="grade" id="radio2" value="2" required="required" /> 大二
				</label> <br> <label for="radio3"> <input type="radio"
					name="grade" id="radio3" value="3" required="required" /> 大三
				</label> <br> <label for="radio4"> <input type="radio"
					name="grade" id="radio4" value="4" required="required" /> 大四
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