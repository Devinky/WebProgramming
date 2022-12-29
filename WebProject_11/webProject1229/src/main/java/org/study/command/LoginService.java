package org.study.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.study.dao.MemberDao;

public class LoginService implements MemberService {

	@Override
	public void executeService(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("로그인 실행");
		
		String userId = request.getParameter("userId");
		String userPw = request.getParameter("userPw");
		
		MemberDao dao = MemberDao.getInstance();
		
		int result = dao.loginDo(userId, userPw);
		
		String forwardURL = "";
		
		HttpSession session = request.getSession();
		
		if(result!=1) {
			System.out.println("로그인 실패");
			forwardURL = "model2/index.jsp";
		}else {
			System.out.println("로그인 성공");
			session.setAttribute("sessionId", userId);
			session.setAttribute("USER_ROLE", "ROLE_USER");
			session.setMaxInactiveInterval(60*60);
			
			forwardURL = "model2/index.jsp";
		}
		
		request.setAttribute("forwardURL", forwardURL);
		
	}

}
