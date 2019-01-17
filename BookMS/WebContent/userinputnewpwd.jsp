<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>输入新密码</title>

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
	<form action="userchangepwd.jsp" method="POST"
		onsubmit="return checkpasswd()">
		请输入密码<input type="password" name="passwd1" required="required"
			pattern="^(?=.*[a-z])(?=.*[A-Z]).*$"
			oninvalid="setCustomValidity('密码由必须包含大小写字母')"
			oninput="setCustomValidity('')" /><br> 请再次输入<input
			type="password" name="passwd2" required="required"
			pattern="^(?=.*[a-z])(?=.*[A-Z]).*$"
			oninvalid="setCustomValidity('密码由必须包含大小写字母')"
			oninput="setCustomValidity('')" /><br> <input type="submit"
			value="修改" />
	</form>
</body>
</html>