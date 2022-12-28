<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jspEx6(파라미터 값 전달)</title>
</head>
<body>
<c:redirect url="jspEx7.jsp">
	<c:param name="id" value="m1"/>
	<c:param name="pw" value="1111"/>
</c:redirect>
</body>
</html>