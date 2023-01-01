package src.study.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.do")
public class Controller extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		doPost(request, response);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String path = request.getContextPath();
		String uri = request.getRequestURI();
		String requestURL = uri.substring(path.length());
		
		String forwardURL = "";
		
		if(requestURL.equals("index.do")) {
			forwardURL = "/index.jsp";
		}else if(requestURL.equals("memberInsert.do")) {
			
		}else if(requestURL.equals("MemberJoin.do")) {
			
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(forwardURL);
		dispatcher.forward(request, response);
	
	}

}
