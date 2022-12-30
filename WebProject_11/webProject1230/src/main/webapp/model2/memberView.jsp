<%@page import="java.util.List"%>
<%@page import="org.study.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
MemberDto member = (MemberDto) request.getAttribute("member");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MEMBER VIEW</title>
</head>
<body>
	<%@include file="header.jsp"%>
	<%-- 상세보기, 회원정보, 로그인, 관리자만(수정, 탈퇴버튼이 보이도록) --%>

	<form action="memberUpdate.do" method="post">

		ID : <input type="hidden" name="userId" value="<%=member.getUserId()%>" id="userId" readonly />
		<span><%=member.getUserId()%></span> <br>
		
		<%
		if(userRole==null || sessionId==null){
			//비로그인 상태
		%>
			Password : <%=member.getUserPw()%> <br>
			Name : <%=member.getUserName()%> <br>
		<%
		}else{
			//로그인 상태(회원, 관리자)
		%>
			Password : <input type="password" name="userPw" value="<%=member.getUserPw()%>" id="userPw" /> <br> 
			Name : <input type="text" name="userName" value="<%=member.getUserName()%>" id="userName" /> <br>
			<input type="submit" value="회원수정" />			
		<%	
		}
		%>
			
		<%
			if(userRole!=null && userRole.equals("ROLE_ADMIN")){
				//관리자만 접근
		%>
			<a href="memberDelete.do?userId=<%=member.getUserId()%>">회원탈퇴</a>
		<%	
			}
		%>
	
			<a href="memberList.do">회원목록</a>

	</form>

</body>
</html>

