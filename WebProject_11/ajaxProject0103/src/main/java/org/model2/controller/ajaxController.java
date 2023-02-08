package org.model2.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.ax")
public class ajaxController extends HttpServlet{
	
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
		String url = uri.substring(path.length());
		
		String forwardURL = "";
		
		if(url.equals("/ajaxIndex.ax")) {
			forwardURL = "/ajax_page/ajax_index.jsp";
		}else if(url.equals("/ajaxCheckedView.ax")) {
			forwardURL = "/ajax_page/ajaxChecked.jsp";
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(forwardURL);
		dispatcher.forward(request, response);
		
	}
}
