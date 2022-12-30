package org.study.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.study.dao.MemberDao;
import org.study.dto.MemberDto;

public class MemberViewService implements MemberService {

	@Override
	public void executeService(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("회원상세조회 실행");
		
		String userId = request.getParameter("userId");
		
		MemberDao dao = MemberDao.getInstance();
		MemberDto member = dao.memberViewDo(userId);
		
		String forwardURL = "";
		
		if(member!=null) {
			System.out.println("회원상세조회 성공");
			request.setAttribute("member", member);
			forwardURL = "model2/memberView.jsp";
		}else {
			System.out.println("회원상세조회 실패");
			forwardURL = "model2/index.jsp";			
		}
		
		request.setAttribute("forwardURL", forwardURL);
		
	}

}
