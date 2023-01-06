package org.model2.command;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.model2.dao.ajaxDao;
import org.model2.dto.ajaxMember;

public class ajaxUpdateView implements ajaxService {

	@Override
	public void ajaxQueryService(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("회원정보수정 보기");

		String userName = request.getParameter("userName");

		response.setCharacterEncoding("UTF-8");

		PrintWriter out = response.getWriter();
		out.print(getJson(userName));
		out.close();

	}

	public String getJson(String userName) {
		if (userName == null)
			userName = "";

		ajaxDao dao = ajaxDao.getInstance();
		StringBuffer result = new StringBuffer("");

		result.append("{'result':[");

		// 해당 userName의 테이블을 get
		ArrayList<ajaxMember> list = dao.updateView(userName);

		result.append("']}'");
		for (ajaxMember dto : list) {
			result.append("{'value':" + dto.getUserName() + "'}, ");
			result.append("{'value':" + dto.getUserAge() + "'}, ");
			result.append("{'value':" + dto.getUserGender() + "'}, ");
			result.append("{'value':" + dto.getUserAddr() + "'}");
		}

		return result.toString();
	}

}
