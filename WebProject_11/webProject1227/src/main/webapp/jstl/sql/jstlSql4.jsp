<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL SQL 4</title>
</head>
<body>
<h1>jstl sql 4</h1>
<sql:setDataSource
	var="conName"
	driver="oracle.jdbc.driver.OracleDriver"
	url="jdbc:oracle:thin:@//localhost:1521/xe"
	user="system"
	password="1234"
/>

<sql:update var="result" dataSource="jdbc/mysqldb">
	update member1227 set userPw=?, userName=? where userId=?
	<sql:param>444</sql:param>
	<sql:param>555</sql:param>
	<sql:param>111</sql:param>
</sql:update>

<!-- DB데이터를 get "select" -->
<sql:query var="result" dataSource="${conName }">
	select * from member1227 order by userId desc
</sql:query>

<table border="1">
	<tr>
		<th>글 번호</th>
		<th>아이디</th>
		<th>비밀번호</th>
		<th>이름</th>
	</tr>
<c:forEach var="row" items="${result.rows }" varStatus="status">
	<tr>
		<td>${status.count }</td>
		<td>${row.userId }</td>
		<td>${row.userPw }</td>
		<td>${row.userName }</td>
	</tr>
</c:forEach>
</table>
</body>
</html>