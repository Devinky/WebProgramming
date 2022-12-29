<%@page import="org.study.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberDto member = (MemberDto)request.getAttribute("member");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MEMBER VIEW</title>
</head>
<body>
<h1>회원상세조회</h1>
<br><br>
<table border="1">
	<tr>
		<th>아이디</th>
		<th>비밀번호</th>
		<th>이름</th>
	</tr>
			<tr>
				<td><%=member.getUserId() %></td>
				<td><%=member.getUserPw() %></td>
				<td><%=member.getUserName() %></td>
			</tr>
			<tr>
				<td colspan="3">
				<a href="selectOk.jsp">회원목록</a>
				<a href="memberUpdateView.jsp?userId=<%=member.getUserId()%>">회원정보수정</a>
				<a href="memberDelete.jsp?userId=<%=member.getUserId()%>">회원탈퇴</a>
				</td>
			</tr>
</table>
</body>
</html>