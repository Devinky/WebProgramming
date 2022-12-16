package org.project.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardController extends HttpServlet {

	@Override
	public void init() throws ServletException {
		System.out.println("init");
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("GET");
		
		String path = request.getContextPath();
		String uri = request.getRequestURI();
		String bUrl = uri.substring(path.length());
		
		String host = request.getRemoteHost();
		StringBuffer url = request.getRequestURL();
		
		
		if(bUrl.equals("/bWrite.board")) {
			System.out.println("게시글 작성");
		}else if(bUrl.equals("/bUpdate.board")) {
			System.out.println("게시글 수정");
		}else if(bUrl.equals("/bSelect.board")) {
			System.out.println("게시글 조회");
		}else if(bUrl.equals("/bDelete.board")) {
			System.out.println("게시글 삭제");
		}
		
		PrintWriter out = response.getWriter();
		
		out.println("path : " + path);
		out.println("uri : " + uri);
		out.println("bUrl : " + bUrl);
		out.println("host : " + host);
		out.println("URL : " + url);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("POST");
	}
	
	@Override
	public void destroy() {
		super.destroy();
	}

}
