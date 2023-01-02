<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
//Controller 역할
String userId = request.getParameter("userId");
String userPw = request.getParameter("userPw");
String userName = request.getParameter("userName");

//1. DB Connection
//2. DB 연동
//3. query 실행

String driver = "com.mysql.cj.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/mysqltest1";
String user = "root";
String password = "1234";

Connection conn = null;
PreparedStatement pstm = null;
String query = "";

int rs = 0;

try{
	Class.forName(driver);
	conn = DriverManager.getConnection(url, user, password);
	query = "insert into member1228 values(?,?,?)";
	pstm = conn.prepareStatement(query);
	
	pstm.setString(1, userId);
	pstm.setString(2, userPw);
	pstm.setString(3, userName);
	
	rs = pstm.executeUpdate();
	
} catch(Exception e){
	e.printStackTrace();
} finally{
	try{
		if(conn!=null) conn.close();
		if(pstm!=null) pstm.close();	
	} catch(Exception e){
		e.printStackTrace();	
	} finally{}
	
}

String url2 = "";

if(rs!=1){
	url2 = "insertFail.jsp";
} else{
	url2 = "selectOk.jsp";
}

RequestDispatcher dispatcher = request.getRequestDispatcher(url2);
dispatcher.forward(request, response);

%>