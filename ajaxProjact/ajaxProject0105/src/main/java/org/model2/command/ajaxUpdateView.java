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
		System.out.println("정보수정 실행");
		
		String userName = request.getParameter("userName");
		
		ajaxDao dao = ajaxDao.getInstance();
		
		int result = dao.updateView(userName);
		
		PrintWriter out = response.getWriter();
		out.print(getJson(userName));
		out.close();
				
	}
	
	public String getJson(String userName) {
		if(userName==null) {
			userName = "";
			StringBuffer result = new StringBuffer();
			result.append("{'result':[");
			
			ajaxDao dao = ajaxDao.getInstance();
					
			ArrayList<ajaxMember> list = dao.updateView(userName);
			for(ajaxMember dto : list) {
				result.append("{'value':" + dto.getUserName() + "'}, ");
				result.append("{'value':" + dto.getUserAge() + "'}, ");
				result.append("{'value':" + dto.getUserGender() + "'}, ");
				result.append("{'value':" + dto.getUserAddr() + "'}");
			}
			result.append("']}'");
			
			return result.toString();
		}
	}

}
