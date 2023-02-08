package org.model2.command;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.model2.dao.ajaxDao;

public class ajaxJoinOk implements ajaxService {

	@Override
	public void ajaxQueryService(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("회원가입 실행");
		
		String userName = request.getParameter("userName");
		String userAge = request.getParameter("userAge");
		String userGender = request.getParameter("userGender");
		String userAddr = request.getParameter("userAddr");
		
		ajaxDao dao = ajaxDao.getInstance();
		
		int result = dao.joinOk(userName, userAge, userGender, userAddr);
		
		PrintWriter out = response.getWriter();
		
		out.write(Integer.toString(result)); //client -> String <- server
		out.close();
		
	}

}
