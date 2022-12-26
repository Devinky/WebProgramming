<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <form action="joinOk.do" method="post" id="joinform">

    <label for="userId">아이디 : </label>
    <input type="text" name="userId" id="userId" placeholder="영문, 숫자 조합 6~10글자"> <br>

    <label for="userPw">비밀번호 : </label>
    <input type="password" name="userPw" id="userPw" placeholder="영문, 숫자, 특수문자 조합 8~12글자"> <br>

    <label for="userName">이름 : </label>
    <input type="text" name="userName" id="userName"> <br>

    <label for="radio">성별</label>
    <input type="radio" name="gender" class="gender" value="여성" checked> 여성
    <input type="radio" name="gender" class="gender" value="남성"> 남성 <br>

    <label for="hobbit">취미</label>
    <input type="checkbox" name="hobbit" class="hobbit" value="게임">게임
    <input type="checkbox" name="hobbit" class="hobbit" value="영화관람">영화관람
    <input type="checkbox" name="hobbit" class="hobbit" value="독서">독서 <br>

    <label for="phone">전화번호 : </label>
    <select name="phone" id="phone" class="phone">
      <option value="" selected>::번호선택::</option>
      <option value="010">010</option>
      <option value="010">011</option>
      <option value="010">018</option>
    </select>
    - <input type="text" name="phone" class="phone" size="4" maxlength="4">
    - <input type="text" name="phone" class="phone" size="4" maxlength="4"> <br>

    <label for="memo">자기소개 : </label>
    <textarea name="memo" id="memo" cols="30" rows="10"></textarea><br>

    <input type="reset" value="초기화">
    <input type="button" value="이벤트구현" id="btn1">
    <input type="submit" class="joinok" value="회원가입">
    
   </form>
</body>
<<<<<<< HEAD
</html>
=======
</html>
>>>>>>> 263a9f2e18ec3cbaafcd454f967e9156402578d5
