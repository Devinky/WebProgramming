<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstlEx Fmt1</title>
</head>
<body>
<h1>jstl Ex Fmt1</h1>
숫자1 : <fmt:formatNumber value="123456" type="number"/> <br>
숫자2 : <fmt:formatNumber value="123456" type="currency" currencySymbol="\"/> <br>
숫자3 : <fmt:formatNumber value="0.12" type="percent"/> <br>
숫자4 : <fmt:formatNumber value="12.3456" pattern=".000"/> <br>

<c:set var="num" value="12.0005"/>
<fmt:parseNumber var="i" integerOnly="true" type="number" value="${num }"/>
<c:out value="${i }"></c:out>
</body>
</html>