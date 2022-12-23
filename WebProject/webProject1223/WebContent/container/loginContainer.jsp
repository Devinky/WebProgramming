<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
	<div class="container">

		<div class="login">
			<div class="login-con">

				<form action="loginOk.do" method="post" id="loginForm">

					<table>
						<tr>
							<th colspan="2">로그인</th>
						</tr>
						<tr>
							<td><label for="userId">ID</label></td>
							<td><input type="text" name="userId" id="userId"
								maxlength="12" placeholder="영문, 숫자 조합 6~10자"></td>
						</tr>
						<tr>
							<td><label for="userPw">Password</label></td>
							<td><input type="password" name="userPw" id="userPw"
								maxlength="12" placeholder="영문, 숫자 조합 8~12자"></td>
						</tr>
						<tr class="lastTr">
							<td colspan="2"><input type="submit" value="로그인"></td>
						</tr>
					</table>

				</form>
			</div>
		</div>

	</div>
</body>
</html>