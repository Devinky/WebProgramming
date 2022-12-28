<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String study[] = {"Java","JSP","HTML","CSS"};
	pageContext.setAttribute("study", study);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Expression Language</title>
</head>
<body>
<h2>EL의 Array Java Program 과목</h2>
1. ${study[0]} <br>
2. ${study[1]} <br>
3. ${study[2]} <br>
4. ${study[3]} <br>
</body>
</html>