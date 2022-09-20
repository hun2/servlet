package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz03_insert")
public class InsertQuiz03 extends HttpServlet {

	
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		
		
		//request param 을 먼저 끄낸다. (상세설명은 필요 없어서 가져오지 않음)
		
		int id = Integer.valueOf(request.getParameter("id")); // userd_goods 의 sellerId 로 넣어야하기에 필요
		String title = request.getParameter("title");
		int price = Integer.valueOf(request.getParameter("price")); 
		String pictureUrl = request.getParameter("url");
		String description = request.getParameter("info");
		
		//db 연결
		
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		
		
		//insert 하기
		
		String insertQuery = "insert into used_goods (sellerId, title, description, price, pictureUrl) values ( '"+ id +"', '" + title + "', '" + description + "' , '" + pictureUrl + "' , '"+ price + "')"; 
		
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//db 연결 해제
		
		ms.disconnect();
		
		//redirect 하기
		
		response.sendRedirect("/lesson04/quiz03_1.jsp");
		
		
		
	}
}
