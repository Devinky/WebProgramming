<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL을 이용한 연산자</title>
</head>
<body>
<h3>산술연산자</h3>
10+20 = ${ 10+20 } <br>
10-20 = ${ 10-20 } <br>
10*20 = ${ 10*20 } <br>
10/20 = ${ 10/20 } <br>
<%-- 10/20 = ${ 10 div 20 } <br> --%>
10%20 = ${ 10%20 } <br>
10%20 = ${ 10 mod 20 } <br>

<h3>논리연산자</h3>
${true && false} <br>
${true and false} <br>
${true || false} <br>
${true or false} <br>
${not true} <br>
${!true} <br>

<h3>비교연산자(비교는 왼쪽기준)</h3>
${ 10 == 11 } <br>
${ 10 eq 11 } , <span>equal</span> <br>
${ 10 != 11 } <br>
<%-- ${ 10 ne 11 } , <span>not equal</span> <br> --%>
${ 10 < 11 } <br>
${ 10 lt 11 } , <span>little</span> <br>
${ 10 > 11 } <br>
${ 10 gt 11 } , <span>greater</span> <br>
${ 10 <= 11 } <br>
${ 10 le 11 } , <span>little or equal</span><br>
${ 10 >= 11 } <br>
${ 10 ge 11 } , <span>greater or equal</span><br>
</body>
</html>