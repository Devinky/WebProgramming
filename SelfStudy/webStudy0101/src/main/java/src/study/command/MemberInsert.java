package src.study.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import src.study.dao.MemberDao;

public class MemberInsert implements MemberCommand {

	@Override
	public void executeServiceCommand(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("회원가입 실행");
		
		String userId = request.getParameter("userId");
		String userPw = request.getParameter("userPw");
		String userName = request.getParameter("userName");
		String email = request.getParameter("email");
		
		MemberDao dao = MemberDao.getInsetance();
		
		String forwardURL = "";
		
		int result = dao.MemberInsertDo(userId, userPw, userName, email);
		
		if(result!=1) {
			System.out.println("회원가입 실패");
			forwardURL = "index.jsp";
		}else {
			System.out.println("회원가입 성공");
			forwardURL = "login.jsp";
		}
		
		request.setAttribute("forwardURL", forwardURL);
		
	}

}
