<%@page import="org.project.memberdto.MemberDto"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

String userId = request.getParameter("userId");

String driver = "com.mysql.cj.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/mysqltest1";
String user = "root";
String password = "1234";

MemberDto member = null;

Connection conn = null;
PreparedStatement pstm = null;
String query = "";
ResultSet rs = null;

try{
	Class.forName(driver);
	conn = DriverManager.getConnection(url, user, password);
	query = "select * from member1228 where userId=?";
	pstm = conn.prepareStatement(query);
	
	pstm.setString(1, userId);

	rs = pstm.executeQuery();
	
	if(rs!=null){
		while(rs.next()){
			member = new MemberDto(rs.getString(1),rs.getString(2),rs.getString(3));
		}
	}
	
} catch(Exception e){
	e.printStackTrace();
} finally{
	try{
		if(conn!=null) conn.close();
		if(pstm!=null) pstm.close();
		if(rs!=null) rs.close();
	} catch(Exception e){
		e.printStackTrace();	
	} finally{}
	
}

String url2 = "";

if(member!=null){
	url2 = "memberView.jsp";	
	request.setAttribute("member", member);
}else{
	url2 = "index.jsp";
}

RequestDispatcher dispatcher = request.getRequestDispatcher(url2);
dispatcher.forward(request, response);

%>