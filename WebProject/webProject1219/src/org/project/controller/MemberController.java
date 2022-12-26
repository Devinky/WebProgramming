package org.project.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.project.commend.JoinOkDo;
import org.project.commend.MemberCommend;
import org.project.commend.MemberDeleteDo;
import org.project.commend.MemberInsertDo;
import org.project.commend.MemberUpdateDo;

@WebServlet("*.do")
public class MemberController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("GET");
		response.setCharacterEncoding("UTF-8");
		doPost(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("POST");
		
		//한글 오류날 때 처리
		request.setCharacterEncoding("UTF-8");
		
		String basicPath = request.getContextPath(); //기본경로
		String uri = request.getRequestURI(); //요청 URI
		String userUrl = uri.substring(basicPath.length()); // 기본경로 뒤에 붙은 .do
		
		String url = "";
		
		MemberCommend commend = null;
		
		if(userUrl.equals("/memberInsert.do")) {
			commend = new MemberInsertDo();
			commend.executeQueryCommend(request, response);
		}else if(userUrl.equals("/memberUpdate.do")){
			commend = new MemberUpdateDo();
			commend.executeQueryCommend(request, response);
		}else if(userUrl.equals("/memberDelete.do")) {
			commend = new MemberDeleteDo();
			commend.executeQueryCommend(request, response);
		}else if(userUrl.equals("/memberSelect.do")) {
			System.out.println("회원조회");
		}else if(userUrl.equals("/joinOk.do")) {
			commend = new JoinOkDo();
			commend.executeQueryCommend(request, response);
		}

		
		
		
		
		
//		String userId = request.getParameter("userId");
//		String userPw = request.getParameter("userPw");
//		String email = request.getParameter("email");
		
		
		
		
		//View -> 클라이언트 요청 응답 -> HTML로 응답함
//		PrintWriter out = response.getWriter();
//		response.setContentType("text/html;charset=UTF-8");
//		response.setCharacterEncoding("UTF-8");
		
//		out.println("<!doctype html>");
//		out.println("<html>");
//		out.println("<meta charset = 'UTF-8'>");
//		out.println("<head>");
//		out.println("<title>서블릿 실습(VIEW)</title>");
//		out.println("</head>");
//		out.println("<body>");
//		out.println("<h1>서블릿</h1>");
//		out.println("요청 ID : " + userId + "<br>");
//		out.println("PW : " + userPw + "<br>");
//		out.println("email : " + email);
//		out.println("</body>");
//		out.println("</html>");
//		out.close();
		
	}

}
