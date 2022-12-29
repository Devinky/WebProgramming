<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="myBean" class="org.study.dto.MemberBean"/>

<jsp:setProperty name="myBean" property="no" value="11"/>
<jsp:setProperty name="myBean" property="userId" value="root"/>
<jsp:setProperty name="myBean" property="userPw" value="1234"/>
<jsp:setProperty name="myBean" property="userName" value="ss1"/>
<jsp:setProperty name="myBean" property="userAge" value="10"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getProperty실습</title>
</head>
<body>
<h1>getProperty실습</h1>
사용자 번호 : <jsp:getProperty property="no" name="myBean"/>
사용자 아이디 : <jsp:getProperty property="userId" name="myBean"/>
사용자 비밀번호 : <jsp:getProperty property="userPw" name="myBean"/>
사용자 이름 : <jsp:getProperty property="userName" name="myBean"/>
사용자 나이 : <jsp:getProperty property="userAge" name="myBean"/>
</body>
</html>