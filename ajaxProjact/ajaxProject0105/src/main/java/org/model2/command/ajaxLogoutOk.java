package org.model2.command;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ajaxLogoutOk implements ajaxService {

	@Override
	public void ajaxQueryService(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("로그아웃 실행");
		
		HttpSession session = request.getSession();
		
		PrintWriter out = response.getWriter();
				
		if(session!=null) {
			System.out.println("로그아웃 성공");
			session.invalidate(); //모든 세션을 삭제
			out.write("1"); //콘솔에 1을 출력하여 js에서 처리하기 위해 선언
		}else {
			System.out.println("로그아웃 실패");
		}
		
		out.close();
		
	}

}
