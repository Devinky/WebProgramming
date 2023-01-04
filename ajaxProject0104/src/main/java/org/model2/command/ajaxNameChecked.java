package org.model2.command;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.model2.dao.ajaxDao;

public class ajaxNameChecked implements ajaxService {

	@Override
	public void ajaxQueryService(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("중복체크");
		
		String userName = request.getParameter("userName");
		
		ajaxDao dao = ajaxDao.getInstance();
		
		int result = dao.nameChecked(userName);
		
		PrintWriter out = response.getWriter();
		
		out.write(Integer.toString(result)); //client -> String <- server
		out.close();
	}

}
                                                                                                                    