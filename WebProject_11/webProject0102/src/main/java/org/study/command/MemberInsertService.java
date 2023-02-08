package org.study.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.study.dao.MemberDao;

public class MemberInsertService implements MemberService {

	@Override
	public void executeService(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("회원가입 실행");
		
		String userId = request.getParameter("userId");
		String userPw = request.getParameter("userPw");
		String userName = request.getParameter("userName");
		
		MemberDao dao = MemberDao.getInstance();
		
		String forwardURL = "";
		
		int result = dao.insertDo(userId, userPw, userName);
		
		if(result!=1) {
			System.out.println("회원가입 실패");
			forwardURL = "model2/index.do";
		}else {
			System.out.println("회원가입 성공");
			forwardURL = "model2/login.jsp";
		}
		
		request.setAttribute("forwardURL", forwardURL);
		
	}

}
