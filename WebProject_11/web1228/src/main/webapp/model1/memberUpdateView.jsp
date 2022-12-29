<%@page import="org.project.memberdto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
MemberDto member = (MemberDto)request.getAttribute("member");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MEMBER UPDATE VIEW</title>
</head>
<body>
<h1>회원정보 수정하기</h1>
<form action="memberUpdate.jsp" method="post">
ID : <input type="hidden" name="userId" id="userId"/> <%=member.getUserId() %> <br>
비밀번호 : <input type="password" name="userPw" id="userPw" /> <br>
이름 : <input type="text" name="userName" id="userName" /> <br>
<input type="submit" value="수정" />
</form>
</body>
</html>