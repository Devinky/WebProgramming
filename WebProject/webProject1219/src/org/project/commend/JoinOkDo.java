package org.project.commend;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.project.dao.MemberDao;

public class JoinOkDo implements MemberCommend {

	@Override
	public void executeQueryCommend(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("회원가입");
		
		String userId = request.getParameter("userId");
		String userPw = request.getParameter("userPw");
		String userName = request.getParameter("userName");
		String gender = request.getParameter("gender");
		//다중 데이터 - 취미
		String[] hobbit = request.getParameterValues("hobbit");
		
		String hobbitArray = "";
		for(String hobbits : hobbit) {
			hobbitArray += hobbit + "";
		}
		
		//다중 데이터 - 전화번호
		String[] phone = request.getParameterValues("phone");
		
		String phoneArray = "";
		for(String phonenum : phone) {
			phoneArray += phone+"";
		}
		
		String memo = request.getParameter("memo");

		//test_tb_1219 테이블에 insert(회원가입) -> MemberInsertDo 참고해서 테이블에 등록되도록
		MemberDao dao = MemberDao.getInstance();
		int result = dao.JoinOkDo(userId, userPw, userName, gender, hobbitArray, phoneArray, memo);
		
		if(result!=1) {
			System.out.println("회원가입 실패");
		}else {
			System.out.println("회원가입 완료");
		}
		
		System.out.println("ID : " + userId);
		System.out.println("Password : " + userPw);
		System.out.println("이름 : " + userName);
		System.out.println("성별 : " + gender);
		System.out.println("취미 : " + hobbitArray);
		System.out.println("전화번호 : " + phoneArray);
		System.out.println("MEMO : " + memo);

	}

}
