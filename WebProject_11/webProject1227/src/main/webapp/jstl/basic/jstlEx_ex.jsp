<%@page import="org.study.dto.MemberDto2"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	ArrayList<String> lists = new ArrayList<String>();
	lists.add("m1");
	lists.add("m2");
	lists.add("m3");
	lists.add("m4");
	lists.add("m5");
	request.setAttribute("lists", lists);
%>
<%
	ArrayList<String> lists2 = 
	(ArrayList<String>)request.getAttribute("lists");
%>
<% 
for(String str: lists2){
	%>
	<%=str%> <br>
	<%
	}%>
	
<c:forEach var="list" items="${lists2 }">
	${lists2 }&nbsp;
</c:forEach>
<br>

<%
	ArrayList<MemberDto2> members = new ArrayList<MemberDto2>();
	members.add(new MemberDto2("m1","11","s1",11,"남"));
	members.add(new MemberDto2("m2","21","s2",21,"여"));
	members.add(new MemberDto2("m3","31","s3",31,"남"));
	members.add(new MemberDto2("m4","41","s4",41,"여"));
	members.add(new MemberDto2("m5","51","s5",51,"남"));
	request.setAttribute("members", members);
%>
<table>
	<tr>
		<th>status</th>
		<th>아이디</th>
		<th>비밀번호</th>
		<th>이름</th>
		<th>나이</th>
		<th>성별</th>
	</tr>
	<%
		int i = 1;
		for(MemberDto2 memberDto2: members){
		%>
		<tr>
			<td><%=i %></td>
			<td><%=memberDto2.getUserId() %></td>
			<td><%=memberDto2.getUserPw() %></td>
			<td><%=memberDto2.getUserName() %></td>
			<td><%=memberDto2.getAge() %></td>
			<td><%=memberDto2.getGender() %></td>
		</tr>
		<%
		
		}
	%>
	<c:forEach var="member" items="${members }" varStatus="status">
		<tr>
			<td>${status.count}</td>
			<td>${status.userId}</td>
			<td>${status.userPw}</td>
			<td>${status.userName}</td>
			<td>${status.age}</td>
			<td>${status.gender}</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>