package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz02_insert")
public class InsertQuiz02 extends HttpServlet{

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		//해야할일
		// db 연결
		
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		
		//insert 하기
		
		String insertQuery = "insert into url( name, url ) values ('" + name + "' , '" + url + "')";
		
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//db 연결해제
		
		ms.disconnect();
		
		//redirect 하기
	
		response.sendRedirect("/lesson04/quiz02_1.jsp");
		
	}
}
