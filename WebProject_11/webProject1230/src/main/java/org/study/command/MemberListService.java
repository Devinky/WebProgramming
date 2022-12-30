package org.study.command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.study.dao.MemberDao;
import org.study.dto.MemberDto;

public class MemberListService implements MemberService {

	@Override
	public void executeService(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("회원목록 실행");
		
		MemberDao dao = MemberDao.getInstance();	
		ArrayList<MemberDto> mList = dao.memberListDo();
		
		String forwardURL = "";
		
		if(mList!=null) {
			System.out.println("회원목록 조회 성공");
			request.setAttribute("mList", mList);
			forwardURL = "model2/memberList.jsp";
		}else {
			System.out.println("회원목록 조회 실패");
			forwardURL ="model2/index.jsp";
		}
		
		request.setAttribute("forwardURL", forwardURL);
		
	}

}
