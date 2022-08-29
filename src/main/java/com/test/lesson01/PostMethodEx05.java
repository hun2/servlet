package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex05")
public class PostMethodEx05 extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
//		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");

		PrintWriter out = response.getWriter();

		// request parameter
		String userId = request.getParameter("userId");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");

		// 출력 response body > plain 타입
//		out.println("userId :" + userId);
//		out.println("name :" + name);
//		out.println("birth :" + birth);
//		out.println("email : " + email);

		// 테이블로 출력
		out.print("<html><head><title></title></head><body>");
		out.print("<table border=1>");
		out.print("<tr><th>아이디</th><td>" + userId + "</td></tr>");
		out.print("<tr><th>이름</th><td>" + name + "</td></tr>");
		out.print("<tr><th>생년월일</th><td>" + birth + "</td></tr>");
		out.print("<tr><th>이메일</th><td>" + email + "</td></tr>");
		out.print("</table>");

		out.print("</body></html>");
		
		
		
		//Post 방식과 Get 방식의 차이
		// Post 는 url 에 파라미터가 붙지 않는다. => body 에 담김.
	}
}
