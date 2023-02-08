<%@page import="java.util.List"%>
<%@page import="org.study.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
List<MemberDto> lists = (List<MemberDto>)request.getAttribute("mList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MEMBER LIST</title>
</head>
<body>
<%@include file="header.jsp" %>

<table border="1">
	<tr>
		<th>아이디</th>
		<th>비밀번호</th>
		<th>이름</th>
		<th>상세정보</th>
		<th>회원탈퇴</th>
	</tr>
	<%
	for(MemberDto list: lists){
		%>
		<tr>
			<td><%=list.getUserId() %></td>
			<td><%=list.getUserPw() %></td>
			<td><%=list.getUserName() %></td>
			<td><a href="memberView.do?userId=<%=list.getUserId() %>">확인</a></td>
			<td><a href="memberDelete.do?userId=<%=list.getUserId() %>">탈퇴</a></td>
		</tr>		
	<% 
	}
	%>
</table>
</body>
</html>

