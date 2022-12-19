package org.project.commend;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.project.dao.MemberDao;

public class MemberInsertDo implements MemberCommend {

	@Override
	public void executeQueryCommend(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("회원가입");
		
		String userId = request.getParameter("userId");
		String userPw = request.getParameter("userPw");
		String email = request.getParameter("email");
		
		//싱글톤 객체(한번만 생성)
		MemberDao dao = MemberDao.getInstance();
		int result = dao.insertDo(userId,userPw,email);
		
		if(result!=1) {
			System.out.println("회원가입 실패");
		}else {
			System.out.println("회원가입 성공! 환영합니다");
		}
		
//		MemberDao Dao = new MemberDao();
		
	}

}
