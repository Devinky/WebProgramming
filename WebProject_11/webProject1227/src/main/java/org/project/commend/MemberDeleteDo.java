package org.project.commend;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemberDeleteDo implements MemberCommend {

	@Override
	public void executeQueryCommend(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("회원탈퇴");
	}

}
