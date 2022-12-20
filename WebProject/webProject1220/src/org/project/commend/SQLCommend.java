package org.project.commend;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

				//회원, 게시글에 대한 커맨드 담당
public interface SQLCommend {
	//DAO -> SQL처리
	void executeQueryCommend(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException;

}
