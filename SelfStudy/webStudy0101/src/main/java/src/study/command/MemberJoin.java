package src.study.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemberJoin implements MemberCommand {

	@Override
	public void executeServiceCommand(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("회원로그인 실행");
		
	}

}
