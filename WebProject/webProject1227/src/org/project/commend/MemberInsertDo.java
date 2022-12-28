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
		String gender = request.getParameter("gender");
		
		//다중 선택으로 나온 값 여러개를 담기 위한 변수
		String[] Ahobbys = request.getParameterValues("hobbys");
		String hobbys = "";
		
		//다중 선택으로 받은 값을 하나씩 담는다
		//foreach가 하나씩 빼오는 역할 담당
		//빼온 값을 비어있는 hobbys에 담는다
		for(String hobby: Ahobbys) {
			hobbys += hobby + " "; //+=연산자도 다시 알아보기
		}
		
		String city = request.getParameter("city");
		String memo = request.getParameter("memo");
		
		//Dao 불러오기(웹에서 받은 요청을 DB로 보내야 하니까)
		MemberDao dao = MemberDao.getInstance(); //싱글톤 사용법 더 알아보기
		//static 메서드여서 클래스 선언 후 바로 메서드를 사용 가능
		
		int result = dao.memberInsertDo(userId, userPw, gender, hobbys, city, memo);
		
		String fowardURL = ""; //가입을 수행한 결과를 어디로 연결할지
		
		if(result!=1) {
			System.out.println("회원가입 실패");
			fowardURL = "/index.jsp";
		}else {
			System.out.println("회원가입 성공");
			fowardURL = "/login.jsp";
		}
		
		request.setAttribute("fowardURL", fowardURL);
	}

}
