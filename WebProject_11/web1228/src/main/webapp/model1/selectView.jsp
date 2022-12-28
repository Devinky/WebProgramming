<%@page import="org.project.memberdto.MemberDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	ArrayList<MemberDto> lists = (ArrayList<MemberDto>)request.getAttribute("lists");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SELECT VIEW</title>
</head>
<body>
<h1>회원목록</h1>
<br>
<table border="1">
	<tr>
		<th>번호</th>
		<th>아이디</th>
		<th>비밀번호</th>
		<th>이름</th>
	</tr>
	<%
		int i = 1;
		for(MemberDto member: lists){
			%>
			<tr>
				<td><%=i %></td>
				<td><%=member.getUserId() %></td>
				<td><%=member.getUserPw() %></td>
				<td>
				<a href="memberViewOk.jsp?userId=<%=member.getUserId() %>">
					<%=member.getUserName() %></a>
				</td>
			</tr>
			<%
				i++;
		}
	%>
</table>
</body>
</html>