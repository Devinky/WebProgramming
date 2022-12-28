<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="now" value="<%=new Date() %>"/>
현재 날짜 : <c:out value="${now }"/> <br>
현재 시간 : <fmt:formatDate value="${now }" type="time"/> <br>
오늘 날짜 : <fmt:formatDate value="${now }" type="date"/> <br>
오늘 날짜와 시간 : <fmt:formatDate value="${now }" type="both"/> <br>
<br>
오늘 날짜 : <fmt:formatDate value="${now }" type="both" dateStyle="short"/> <br>
오늘 날짜 : <fmt:formatDate value="${now }" type="both" timeStyle="short"/> <br>
오늘 날짜 : <fmt:formatDate value="${now }" type="both" timeStyle="short" dateStyle="short"/> <br>
<br>
오늘 날짜 : <fmt:formatDate value="${now }" type="both" dateStyle="medium"/> <br>
오늘 날짜 : <fmt:formatDate value="${now }" type="both" timeStyle="medium"/> <br>
오늘 날짜 : <fmt:formatDate value="${now }" type="both" timeStyle="medium" dateStyle="medium"/> <br>
<br>
오늘 날짜 : <fmt:formatDate value="${now }" type="both" dateStyle="long"/> <br>
오늘 날짜 : <fmt:formatDate value="${now }" type="both" timeStyle="long"/> <br>
오늘 날짜 : <fmt:formatDate value="${now }" type="both" timeStyle="long" dateStyle="long"/> <br>
<br>
오늘 날짜 : <fmt:formatDate value="${now }" pattern="yyyy-MM-dd"/> <br>
오늘 날짜 : <fmt:formatDate value="${now }" pattern="yyyy/MM/dd"/> <br>
오늘 날짜 : <fmt:formatDate value="${now }" pattern="yyyy년 MM월 dd일 hh시kk분ss초"/> <br>
오늘 날짜 : <fmt:formatDate value="${now }" pattern="yyyy-MM-dd hh:kk:ss"/> <br>
<br>
<%-- 날짜 형식으로 변환 --%>
<c:set var="i" value="061910"/>
<fmt:parseDate var="i2" value="${i }" pattern="hhmmss"/>
<c:out value="${i2 }"></c:out>
</body>
</html>