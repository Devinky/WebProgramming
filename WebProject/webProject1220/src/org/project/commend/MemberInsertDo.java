package org.project.commend;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.project.dao.MemberDao;

public class MemberInsertDo implements SQLCommend {

	@Override
	public void executeQueryCommend(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("회원가입 실행");
		
		String userId = request.getParameter("userId");
		String userPw = request.getParameter("userPw");
		String email = request.getParameter("email");
		
		MemberDao dao = MemberDao.getInstance();
		
		int result = dao.insertDo(userId, userPw, email);
		
		String fowardURL = "";
		
		if(result!=1) {
			System.out.println("회원가입 실패");
			fowardURL = "/index.jsp";
		}else {
			System.out.println("회원가입 성공. 환영합니다^^");
			fowardURL = "/login.jsp";
		}
		
		request.setAttribute("result", result);
		request.setAttribute("fowardURL", fowardURL); //request 객체에 url을 담는다(?) 이거 값 통일시켜야 함
	}

}
