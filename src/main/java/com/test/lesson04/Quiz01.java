package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/Quiz01")
public class Quiz01 extends HttpServlet {

	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		
		
		//1. DB 연결하기 
		
		MysqlService quiz = MysqlService.getInstance();
		quiz.connect(); 
		
		
		//2. 쿼리 수행
		//insert 
		
		
		try {
			String insertQuery = "insert into real_estate(realtorId, address, area, type, price, rentPrice) values (3, '헤라펠리스 101동 5305호', 350, '매매', 15000000, null)";
			quiz.update(insertQuery);
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		//select
		
		String selectQuery = "select address, area, type from real_estate order by id desc limit 10;";
		
		//3. 결과 출력
		
		
		try {
			PrintWriter out = response.getWriter();
			ResultSet resultquiz = quiz.select(selectQuery);
			while( resultquiz.next()) {
				
				String address = resultquiz.getString("address");
				int area = resultquiz.getInt("area"); // Integer 는 null 가능
				String type = resultquiz.getString("type");
				
				out.println("매물주소 :" + address + " 면적 : " + area + " 타입 :" + type);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
		//4. db 연결 해제
		
		quiz.disconnect();
		
	}
}
