package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingEx01 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
	    
		//한글깨짐 방지
		response.setCharacterEncoding("utf-8");
	    response.setContentType("text/plain");
	    
	    //출력
		PrintWriter out = response.getWriter();
		out.println("하이");
		
		//날짜 클래스
		
		Date now = new Date();
		out.println(now);
		
		//날짜를 내가 원하는 걸로 나오게 하는 클래스
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd a hh:mm:ss");
		out.println(sdf.format(now));
		
	}
	
	
	
}
