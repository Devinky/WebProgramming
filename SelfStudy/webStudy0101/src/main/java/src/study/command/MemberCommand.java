package src.study.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface MemberCommand {
	
	void executeServiceCommand(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException;

}
