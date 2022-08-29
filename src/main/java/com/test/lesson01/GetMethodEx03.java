package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex03")
public class GetMethodEx03 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");
		
		//url 에 ?뒤에를 오는것들을 Query string 이라고 한다.
		
		//Request parameter 요청 정보를 받아오는것
		String userId = request.getParameter("user_id");
		String name = request.getParameter("name");
		int age = Integer.valueOf(request.getParameter("age")); // string 으로 밖에 안받아져서 형변환 할 수 있음.
		
		PrintWriter out = response.getWriter();
//		out.println("안녕하세요옹");
//		out.println("아이디는 " + userId + "이름은 " + name + "나이는 " +  age);
		
		// Json(javascript Object notation) => 즉 String 으로 response 구성한다.
		// { "user_id":"kihun", "name":"기훈", "age":33}
		
		
		
		out.print("{\"user_id\":\"" + userId + "\", \"name\":\"" + name + "\", \"age\":" + age + "}");
		
		
	}
}
