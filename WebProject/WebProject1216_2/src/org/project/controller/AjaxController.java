package org.project.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//어노테이션 : 주석, 코드 자동화, 실행시 특정 기능을 수행, 롬복도 어노테이션의 일종

@WebServlet("*.ax") //xml파일에서 작성하지 않아도 서블릿이 됨(내부적으로 맵핑이 됨)
public class AjaxController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("GET");
		
		String userid = request.getParameter("userid");
		String userpw = request.getParameter("userpw");
		String username = request.getParameter("username");
		
		System.out.println("ID : " + userid);
		System.out.println("Password : " + userpw);
		System.out.println("Name : " + username);
		
		PrintWriter out = response.getWriter();
		
		out.println("ID : " + userid);
		out.println("Password : " + userpw);
		out.println("Name : " + username);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("POST");
		
	
	}

}
