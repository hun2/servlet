package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz08")
public class GetMethodQuiz08 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String keyword = request.getParameter("keyword");
		
		out.print("<html><head><title>맛집</title></head><body>");
		
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		Iterator<String> umm = list.iterator();
		while(umm.hasNext()) {
			String name = umm.next();
			if ( name.contains(keyword)) {
				String name1 = name.replaceAll(keyword, "<b>" + keyword + "</b>");
				out.print(name1 + "<br>");
			}
		}
		
		
		//두번째 방식
//		if (line.contains(keyword)){
//			String[] words = line.split("keyword");
		
		out.print("</body></html>");
		
	}

}
