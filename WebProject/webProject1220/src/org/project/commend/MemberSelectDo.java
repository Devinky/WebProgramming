package org.project.commend;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.project.dao.MemberDao;
import org.project.dto.MemberDto;

public class MemberSelectDo implements SQLCommend {

	@Override
	public void executeQueryCommend(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("회원목록 조회");
		
		MemberDao dao = MemberDao.getInstance();
		
		ArrayList<MemberDto> memberList = dao.selectDo();
		
		String fowardURL = "";
		
		if(memberList!=null) {
			System.out.println("회원목록");
			fowardURL = "/memberlist.jsp";
			
		}else {
			System.out.println("회원이 없습니다");
			fowardURL = "/index.jsp";
		}
		
		request.setAttribute("memberList", memberList);
		request.setAttribute("fowardURL", fowardURL);
		
	}

}
