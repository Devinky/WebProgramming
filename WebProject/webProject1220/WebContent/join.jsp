<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JOIN</title>
</head>
<body>
	<h1>join.jsp</h1>
  <form action="memberInsert.do" method="post" id="joinform">

    <label for="userId">아이디 : </label>
    <input type="text" name="userId" id="userId" placeholder="영문, 숫자 조합 6~10글자"> <br>

    <label for="userPw">비밀번호 : </label>
    <input type="password" name="userPw" id="userPw" placeholder="영문, 숫자, 특수문자 조합 8~12글자"> <br>

    <label for="email">이메일 : </label>
    <input type="text" name="email" id="email"> <br>

    <input type="reset" value="초기화">
    <input type="button" value="이벤트구현" id="btn1">
    <input type="submit" class="joinok" value="회원가입">
    
   </form>
</body>
</html>