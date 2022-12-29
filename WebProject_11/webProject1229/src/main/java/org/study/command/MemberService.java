package org.study.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface MemberService {

	void executeService(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException;
	
}
