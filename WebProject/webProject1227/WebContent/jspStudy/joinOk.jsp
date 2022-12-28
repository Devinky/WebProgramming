<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String userId = request.getParameter("userId");
	String userName = request.getParameter("userName");
	String[] phoneArr = request.getParameterValues("phone");
	String phone = "";
	for(String str : phoneArr){
		phone += "" + str;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>joinOk.jsp</title>
</head>
<body>
	id : <%=userId %>, name : <%=userName %>, 전화번호 : <%=phone %> <br>
	<%
		Enumeration en = request.getParameterNames(); //위의 name값들을 다 가져옴
		while(en.hasMoreElements()){
			String name = en.nextElement().toString();
			out.println(name);
		}
	%>
	<br>
	
	쿠키 : <%=request.getCookies() %> <br> <%-- 쿠키, 로그인 --%>
	전송방식 : <%=request.getMethod() %> <br>
	세션 : <%=request.getSession() %> <br>
	요청IP : <%=request.getRemoteAddr() %> <br> <%-- 세션, 로그인 --%>
	프로토콜 : <%=request.getProtocol() %> <br> <%-- 요청 프로토콜 --%>
	서버호스트이블 : <%=request.getServerName() %> <br> <%-- 요청 ServerName --%>
	요청URI : <%=request.getRequestURI() %> <br> <%-- 요청 URI **** --%>
	요청URI 쿼리스트링 : <%=request.getQueryString() %> <br>
	요청에 대한 기본 패스 : <%=request.getContextPath() %> <br> <%-- 요청 기본 패스 --%>
	요청 캐릭터 셋 : <%=request.getCharacterEncoding() %> <br>
	문자열 Name 저장된 헤더 : <%=request.getHeader("host") %> <br>
	
	
</body>
</html>