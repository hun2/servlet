package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz06")
public class GetMethodQuiz06 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request , HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");
		
		PrintWriter out = response.getWriter();
		int num1 = Integer.valueOf(request.getParameter("number1"));
		int num2 = Integer.valueOf(request.getParameter("number2"));
		
		//덧셈
		int num3 = num1 + num2;
		//빼기
		int num4 = num1 - num2;
		
		//곱하기
		int num5 = num1 * num2;
		
		//나누기
		int num6 = num1 / num2;
		
		
		out.print("{\"addtion\":\"" + num3 + "\", \"subtraction\":\"" + num4 + "\", \"multiplication\":\"" + num5 +
				"\", \"division\":\"" + num6 + "\"}");
		
	}
}
