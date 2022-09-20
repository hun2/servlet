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

@WebServlet("/lesson04/Ex01")
public class Ex01 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		
		//1. DB 연결하기 (객체 생성을 하고 반드시 커넥트 메소드를 호출해야함)
		
		MysqlService ms = MysqlService.getInstance(); // 싱글턴 객체 생성
		ms.connect(); // 이렇게 해야 db 연결 됨 
		
		
		//2. 쿼리 수행 ( 접속해서 가져오는거)
		
		//insert
		
		try {
			
			String insertQuery = "insert into used_goods (sellerId, title, description, price) values (2, '컴퓨터 팝니다' , '150주고 산 컴터임다', 55555)";
			
			ms.update(insertQuery);
			
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		
		// select 
		
		String  selectQuery = "select * from used_goods";
		
		
		//3. 결과 출력
		try {
			PrintWriter out =  response.getWriter();
			ResultSet resultSet = ms.select(selectQuery);
			while (resultSet.next()) {  // 결과 행이 있는 동안 수행
				out.println(resultSet.getInt("id"));
				out.println(resultSet.getString("title"));
				out.println(resultSet.getInt("price"));
				out.println(resultSet.getString("description"));
				
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
		//4. db 연결 해제
		
		ms.disconnect(); // 이렇게 해야 db 연결 해제 됨.
		
		
	}
}
