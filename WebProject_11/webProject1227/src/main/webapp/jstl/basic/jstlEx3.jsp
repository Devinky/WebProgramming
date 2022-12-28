<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstlEx3</title>
</head>
<body>
<!-- 다중 조건 choose ~~when ~otherwise -->
<c:set var="name" value="JAVA"/>
<c:choose>
	<c:when test="${name eq 'JAVA' }">
		JAVA입니다
	</c:when>
	<c:when test="${name eq 'JSP' }">
		JSP입니다
	</c:when>
	<c:otherwise>
		해당하는 과목이 없습니다
	</c:otherwise>
</c:choose>
<br>

<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>

이름: <%=id %>, 비밀번호: <%=pw %> <br>
이름: ${param.id }, 비밀번호: ${param.pw } <br>

<c:choose>
	<c:when test="${(param.id eq 'm1') and (param.pw eq '111') }">
		로그인 성공
	</c:when>
	<c:otherwise>
		로그인 실패
	</c:otherwise>
</c:choose>

<!-- 예외처리 -->
<c:catch var="ex1">
	<%=10/0 %>
</c:catch>
예외 발생 : ${ex1 }
<br>

</body>
</html>