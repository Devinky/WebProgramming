<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward</title>
</head>
<body>
<!-- 자원이나 페이지를 다른 jsp로 넘길 때 사용 -->
	<jsp:forward page="forward_param.jsp">
		<jsp:param value="root" name="id"/>
		<jsp:param value="1111" name="pw"/>
	</jsp:forward>
</body>
</html>