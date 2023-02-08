<%@page import="org.study.dto.MemberDto"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

String driver = "com.mysql.cj.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/mysqltest1";
String user = "root";
String password = "1234";

ArrayList<MemberDto> lists = new ArrayList<>();

Connection conn = null;
PreparedStatement pstm = null;
String query = "";
ResultSet rs = null;

try{
	Class.forName(driver);
	conn = DriverManager.getConnection(url, user, password);
	query = "select * from member1228";
	pstm = conn.prepareStatement(query);
	
	rs = pstm.executeQuery();

	if(rs!=null){
		while(rs.next()){
			lists.add(new MemberDto(rs.getString(1),rs.getString(2),rs.getString(3)));
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

if(lists!=null){
	url2 = "selectView.jsp";
	request.setAttribute("lists", lists);
}else{
	url2 = "index.jsp";
}

RequestDispatcher dispatcher = request.getRequestDispatcher(url2);
dispatcher.forward(request, response);

%>