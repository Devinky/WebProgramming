<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session Main</title>
</head>
<body>
<%
	Enumeration enumeration = session.getAttributeNames();
	
	while(enumeration.hasMoreElements()){
		String sName = enumeration.nextElement().toString();
		String sValue = (String)session.getAttribute(sName);
		
		if(sValue.equals("admin")) {
			out.println(sValue + "님 안녕하세요" + "<br>");
		}
		
	}
%>

<a href="sessiontest.jsp">세션테스트</a>
<a href="logout.jsp">로그아웃</a>

</body>
</html>