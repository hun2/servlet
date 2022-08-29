package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz05")
public class GetMethodQuiz05 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		
		PrintWriter out = response.getWriter();
		
		int number = Integer.valueOf(request.getParameter("number"));
				
		if ( number == 2) {
			
			out.print("<html><head><title></title></head><body>");
			for ( int i =1 ; i<=9; i++) {
				out.println( "<li>"+"2" + " X " + i  + " = " + (2*i) + "</li>");
			}
			out.print("</body></html>");
		}
		if ( number == 3) {
			out.print("<html><head><title></title></head><body>");
			for ( int i =1 ; i<=9; i++) {
				out.println( "<li>"+"3" + " X " + i  + " = " + (3*i) + "</li>");
			}
			out.print("</body></html>");
		}
		if ( number == 4) {
			out.print("<html><head><title></title></head><body>");
			for ( int i =1 ; i<=9; i++) {
				out.println( "<li>"+"4" + " X " + i  + " = " + (4*i) + "</li>");
			}
			out.print("</body></html>");
		}
		if ( number == 5) {
			out.print("<html><head><title></title></head><body>");
			for ( int i =1 ; i<=9; i++) {
				out.println( "<li>"+"5" + " X " + i  + " = " + (5*i) + "</li>");
			}
			out.print("</body></html>");
		}
		if ( number == 6) {
			out.print("<html><head><title></title></head><body>");
			for ( int i =1 ; i<=9; i++) {
				out.println( "<li>"+"6" + " X " + i  + " = " + (6*i) + "</li>");
			}
			out.print("</body></html>");
		}
		if ( number == 7) {
			out.print("<html><head><title></title></head><body>");
			for ( int i =1 ; i<=9; i++) {
				out.println( "<li>"+"7" + " X " + i  + " = " + (7*i) + "</li>");
			}
			out.print("</body></html>");
		}
		if ( number == 8) {
			out.print("<html><head><title></title></head><body>");
			for ( int i =1 ; i<=9; i++) {
				out.println( "<li>"+"8" + " X " + i  + " = " + (8*i) + "</li>");
			}
			out.print("</body></html>");
		}if ( number == 9) {
			out.print("<html><head><title></title></head><body>");
			for ( int i =1 ; i<=9; i++) {
				out.println( "<li>"+"9" + " X " + i  + " = " + (9*i) + "</li>");
			}
			out.print("</body></html>");
		}
		
		
	}
}
