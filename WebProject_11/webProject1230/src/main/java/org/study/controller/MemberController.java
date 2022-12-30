package org.study.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.study.command.MemberService;
import org.study.command.MemberViewService;
import org.study.command.MemberInsertService;
import org.study.command.MemberListService;

@WebServlet("*.do")
public class MemberController extends HttpServlet {
	
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
		String clientUrl = uri.substring(path.length());
		
		String forwardURL = "";
		
		MemberService service = null;
		
		if(clientUrl.equals("/index.do")) {
			forwardURL = "model2/index.jsp";
		}else if(clientUrl.equals("/joinView.do")) {
			forwardURL = "model2/join.jsp";
		}else if(clientUrl.equals("/loginView.do")) {
			forwardURL = "model2/login.jsp";
		}else if(clientUrl.equals("/joinOk.do")) {
			service = new MemberInsertService();
			service.executeService(request, response);
			forwardURL = (String)request.getAttribute("forwardURL");
		}else if(clientUrl.equals("/memberList.do")) {
			service = new MemberListService();
			service.executeService(request, response);
			forwardURL = (String)request.getAttribute("forwardURL");
		}else if(clientUrl.equals("/memberView.do")) {
			service = new MemberViewService();
			service.executeService(request, response);
			forwardURL = (String)request.getAttribute("forwardURL");
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(forwardURL);
		dispatcher.forward(request, response);
		
	}

}
