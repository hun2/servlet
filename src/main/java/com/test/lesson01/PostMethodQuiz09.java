package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz09")
public class PostMethodQuiz09 extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		
		String name = request.getParameter("name");
		String self = request.getParameter("self");
		
		out.print("<html><head><title>입사지원서</title></head><body>");
		String name1 = name.replace(name, "<b>" + name + "</b>");
		out.print("<p>" + name1 + "님의 지원이 완료 되었습니다</p>");
		out.print("<h3>지원내용</h3>");
		out.print("<span>" + self + "</span>");
		
		out.print("</body></html>");
		
	}
	
}
