<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	//쿠키 조회
	Cookie[] cookies = request.getCookies();

	for(int i=0;i<cookies.length;i++){
		String cookieId = cookies[i].getName();
		
		if(cookieId.equals("admin")){
			
			out.println("cookies[" + i + "] name : " + cookies[i].getName() + "<br>");
			out.println("cookies[" + i + "] value : " + cookies[i].getValue() + "<br>");
			out.println("=================================<br>");
			
		}
 	}
%>

<a href="cookiedel.jsp">쿠키 삭제</a>

</body>
</html>