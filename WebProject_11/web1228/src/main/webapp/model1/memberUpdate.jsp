<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

String userId = request.getParameter("userId");

String driver = "com.mysql.cj.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/mysqltest1";
String user = "root";
String password = "1234";

Connection conn = null;
PreparedStatement pstm = null;
String query = "";

int result = 0;

try{
	
	Class.forName(driver);
	conn = DriverManager.getConnection(url, user, password);
	query = "update from member1228 set userPw=?, userName=? where userId=?";
	pstm = conn.prepareStatement(query);
	
	pstm.setString(1, userId);
	
	result = pstm.executeUpdate();
	
} catch(Exception e){
	e.printStackTrace();
} finally {
	try{
		if(conn!=null) conn.close();
		if(pstm!=null) pstm.close();
	} catch(Exception e){
		e.printStackTrace();
	} finally{}
	
}

String url2 = "";

if(result!=1){
	url2="selectOk.jsp";
}else{
	url2="selectOk.jsp";
}

RequestDispatcher dispatcher = request.getRequestDispatcher(url2);
dispatcher.forward(request, response);

%>