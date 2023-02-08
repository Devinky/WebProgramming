package org.model2.command;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.model2.dao.ajaxDao;

public class ajaxLoginOk implements ajaxService {

	@Override
	public void ajaxQueryService(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("로그인 실행");
		
		String userName = request.getParameter("userName");
		String userAge = request.getParameter("userAge");
		
		ajaxDao dao = ajaxDao.getInstance();
		
		int result = dao.loginOk(userName, userAge);
		
		HttpSession session = request.getSession();
		
		if(result==1) {
			System.out.println("로그인 성공");
			session.setAttribute("sessionId", userName);
			session.setMaxInactiveInterval(60*30);
		}else {
			System.out.println("로그인 실패");
		}
		
		PrintWriter out = response.getWriter();
		
		out.write(Integer.toString(result)); //client -> String <- server
		out.close();
	}

}
