package org.project.commend;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.project.dao.MemberDao;

public class login1221InsertDo implements SQLCommend {

	@Override
	public void executeQueryCommend(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("회원가입");
		
		String userId = request.getParameter("userId");
		String userPw = request.getParameter("userPw");
		String gender = request.getParameter("gender");
		String[] hobbysArr = request.getParameterValues("hobbys");
		
		String hobbys = "";
		for(String hobby: hobbysArr) {
			hobbys += hobby + "";
		}
		
		String city = request.getParameter("city");
		String memo = request.getParameter("memo");
		
		MemberDao dao = MemberDao.getInstance();
		int rs = dao.login1221InsertDo(userId, userPw, gender, hobbys, city, memo);
		
		String fowardURL = "";
		
		if(rs!=1) {
			System.out.println("회원가입 실패");
			fowardURL = "/index1221.jsp";
		}else {
			System.out.println("회원가입 성공");
			fowardURL = "/login1221.jsp";
		}
		
		request.setAttribute("fowardURL", fowardURL);
	}

}
