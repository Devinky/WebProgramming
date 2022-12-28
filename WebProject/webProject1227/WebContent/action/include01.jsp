<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include01.jsp</title>
</head>
<body>
	<h1>include01.jsp 페이지</h1>
	<jsp:include page="include02.jsp" flush="true"/> <!-- 한줄로 쓸 때는 /를 붙이고(안 붙이면 에러남) -->
	<jsp:include page="include02.jsp" flush="true"> <!-- 쌍으로 쓸 때는 안 붙인다 -->
		<jsp:param name="paramName" value="value1"/>
	</jsp:include>
	<h1>다시 include01.jsp 페이지</h1>	
</body>
</html>