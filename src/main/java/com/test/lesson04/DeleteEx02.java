package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/ex02_delete")
public class DeleteEx02 extends HttpServlet{

	// 메소드가 get 인 이유는 ex02_1 에서 a태그 id 파라미터 값으로 요청하기 때문에 doget
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// request 삭제 할 id를 받아오기 
		int id =  Integer.valueOf(request.getParameter("id"));
		// db 연결
		
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// delete 쿼리 수행
		String deleteQuery = "delete from new_user where id =" + id;
		try {
			ms.update(deleteQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// db연결해제
		
		ms.disconnect();
		
		// redirect(서버 302 로떨어짐) 원래페이지로 이동
		
		response.sendRedirect("/lesson04/ex02_1.jsp");
		
	}
}
