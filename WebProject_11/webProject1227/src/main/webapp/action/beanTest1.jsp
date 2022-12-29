<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beanTest1</title>
</head>
<body>
<jsp:useBean id="member" class="org.study.dto.MemberBean" scope="page">

	<jsp:setProperty name="member" property="no" param="no"/>
	<jsp:setProperty name="member" property="userId" param="userId"/>
	<jsp:setProperty name="member" property="userPw" param="userPw"/>
	<jsp:setProperty name="member" property="userName" param="userName"/>
	<jsp:setProperty name="member" property="userAge" param="userAge"/>

</jsp:useBean>

<jsp:useBean id="member2" class="org.study.dto.MemberBean">
	<jsp:setProperty name="member2" property="*"/>
</jsp:useBean>
	
	<%-- bean출력, getter --%>
	번호 : <jsp:getProperty name="member" property="no"/> <br>
	아이디 : <jsp:getProperty name="member" property="userId"/> <br>
	비밀번호 : <jsp:getProperty name="member" property="userPw"/> <br>
	이름 : <jsp:getProperty name="member" property="userName"/> <br>
	나이 : <jsp:getProperty name="member" property="userAge"/> <br>
	
	<%-- bean출력, getter --%>
	번호 : <jsp:getProperty name="member2" property="no"/> <br>
	아이디 : <jsp:getProperty name="member2" property="userId"/> <br>
	비밀번호 : <jsp:getProperty name="member2" property="userPw"/> <br>
	이름 : <jsp:getProperty name="member2" property="userName"/> <br>
	나이 : <jsp:getProperty name="member2" property="userAge"/> <br>
	
</body>
</html>