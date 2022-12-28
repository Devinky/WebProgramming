package org.project.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.project.commend.LoginOkDo;
import org.project.commend.LogoutDo;
import org.project.commend.MemberCommend;
import org.project.commend.MemberDeleteDo;
import org.project.commend.MemberInsertDo;
import org.project.commend.MemberSelectDo;
import org.project.commend.MemberUpdateDo;

@WebServlet("*.do")
public class MemberController extends HttpServlet {
	//get, post 등 요청이 들어오면 -> web으로 가게끔
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		System.out.println("GET");
		doWebApp(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		System.out.println("POST");
		doWebApp(request, response);
		
	}
	
	//접근제한자는 private든 protected든 상관없다(어차피 내부에서만 사용하기 때문에)
	private void doWebApp(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String path = request.getContextPath();
		String uri = request.getRequestURI();
		String basicURL = uri.substring(path.length());
		
		String fowardURL = "";
		
		MemberCommend commend = null;
		
		if(basicURL.equals("/memberInsert.do")) {
			//commend에게 일을 시키고, 일을 처리한 결과 및 값을(값이 있다면) view로 보낸다
			commend = new MemberInsertDo();
			commend.executeQueryCommend(request, response);
			//commend에 일을 시키고 가져온 결과를 담는다
			fowardURL = (String)request.getAttribute("fowardURL");
		}else if(basicURL.equals("/memberUpdate.do")) {
			commend = new MemberUpdateDo();
			commend.executeQueryCommend(request, response);
			fowardURL = (String)request.getAttribute("fowardURL");
		}else if(basicURL.equals("/memberDelete.do")) {
			commend = new MemberDeleteDo();
			commend.executeQueryCommend(request, response);
			fowardURL = (String)request.getAttribute("fowardURL");
		}else if(basicURL.equals("/memberSelect.do")) {
			commend = new MemberSelectDo();
			commend.executeQueryCommend(request, response);
			fowardURL = (String)request.getAttribute("fowardURL");
		}else if(basicURL.equals("/loginOk.do")) {
			commend = new LoginOkDo();
			commend.executeQueryCommend(request, response);
			fowardURL = (String)request.getAttribute("fowardURL");
		}else if(basicURL.equals("/logout.do")) {
			commend = new LogoutDo();
			commend.executeQueryCommend(request, response);
			fowardURL = (String)request.getAttribute("fowardURL");
		}else if(basicURL.equals("/index.do")) {
			fowardURL = "/index.jsp"; //기본path경로(/) <- ~WebContent까지! 범위 밖의 것을 불러오려면 /써야함
		}else if(basicURL.equals("/joinView.do")) {
			fowardURL = "/join.jsp";
		}else if(basicURL.equals("/loginView.do")) {
			fowardURL = "/login.jsp";
		}
	
		//view로 url값을 가져가는데, 그 url값이 fowardURL
		RequestDispatcher dispatcher = request.getRequestDispatcher(fowardURL);
		dispatcher.forward(request, response);
		
	}
	

}
