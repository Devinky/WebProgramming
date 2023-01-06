package org.model2.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.model2.command.ajaxJoinOk;
import org.model2.command.ajaxLoginOk;
import org.model2.command.ajaxLogoutOk;
import org.model2.command.ajaxNameChecked;
import org.model2.command.ajaxService;

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
		
		ajaxService service = null;;
		
		if(url.equals("/ajaxIndex.ax")) {
			forwardURL = "/ajax_page/ajax_index.jsp";
		}
		else if(url.equals("/ajaxCheckedView.ax")) {
			forwardURL = "/ajax_page/ajaxChecked.jsp";
		}
		else if(url.equals("/ajaxJoinView.ax")) {
			forwardURL = "/ajax_page/ajax_join.jsp";
		}
		else if(url.equals("/ajaxLoginView.ax")) {
			forwardURL = "/ajax_page/ajax_login.jsp";
		}
		else if(url.equals("/ajaxUpdateView.ax")) {
			forwardURL = "/ajax_page/ajax_update.jsp";
		}
		else if(url.equals("/ajaxCheckedOk.ax")) {
			service = new ajaxNameChecked();
			service.ajaxQueryService(request, response);
			return; //ajax
		}
		else if(url.equals("/ajaxJoinOk.ax")) {
			service = new ajaxJoinOk();
			service.ajaxQueryService(request, response);
			return;
		}
		else if(url.equals("/ajaxLoginOk.ax")) {
			service = new ajaxLoginOk();
			service.ajaxQueryService(request, response);
			return;
		}
		else if(url.equals("/ajaxLogout.ax")) {
			service = new ajaxLogoutOk();
			service.ajaxQueryService(request, response);
			return;
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(forwardURL);
		dispatcher.forward(request, response);
		
	}
	
}
