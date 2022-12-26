package org.project.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.project.commend.SQLCommend;
import org.project.commend.login1221InsertDo;

@WebServlet("*.do")
public class MemberController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		System.out.println("GET");
		doWeb(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		System.out.println("POST");
		doWeb(request, response);
	}

	//별도로 만든 메서드
	private void doWeb(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String path = request.getContextPath();
		String uri = request.getRequestURI();
		String basicURL = uri.substring(path.length());
		
		String fowardURL = ""; //컨트롤러에서 view로 연결
		
		SQLCommend commend = null;
		
		if(basicURL.equals("/login1221Insert.do")) {
			
			commend = new login1221InsertDo();
			commend.executeQueryCommend(request, response);
			fowardURL = (String) request.getAttribute("fowardURL"); //view로 보내는 역할
			
		}else if(basicURL.equals("/join.do")) {
			fowardURL = "/join1221.jsp";
		}else if(basicURL.equals("/index.do")) {
			fowardURL = "/index.jsp";
		}
		
		RequestDispatcher dispat = request.getRequestDispatcher(fowardURL); //view 페이지로 보냄
		dispat.forward(request, response); //값을 실어서 보냄??
		
	}
	
}
