<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
</head>
<body>
	<%
		Calendar today =  Calendar.getInstance(); // 싱글톤은 아님. 싱글톤은 구글링해서 찾아보자
		out.print(today + "<br>");
		
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 HH:mm:ss>");
		out.print("오늘 날짜 : " + sdf.format(today.getTime()));     // calendar > date 객체로 변환 후 format 적용
		out.print("<br>");
		
		
		// 어제 날짜 구하기
		
		SimpleDateFormat sdf2 =  new SimpleDateFormat("yyyy년 MM월 dd일");
		Calendar yesterday = Calendar.getInstance();
		yesterday.add(Calendar.DATE, -1);
		out.print("어제 날짜:" + sdf2.format(yesterday.getTime()));
		out.print("<br>");
		
		// 한달 전 날짜 구하기
		yesterday.add(Calendar.MONTH, -1);
		out.print("한달 전 날짜 : " + sdf2.format(yesterday.getTime()));
		out.print("<br>");
		
		//1년 전 날짜구하기
		yesterday.add(Calendar.YEAR, -1);
		out.print("1년 전 날짜: " + sdf2.format(yesterday.getTime()));
		out.print("<br>");
		
		//두 날짜를 비교 하는 방법
		// compareTo 메소드임  => [A(기준값) B] 기준값이 크면 1 , 같으면 0 , 기준값이 작으면 -1
		int result = today.compareTo(yesterday);
		if ( result > 0) {
			
			out.print("today 가 더 크다.");
		} else if (result == 0) {
			out.print("두 날짜는 같다");
		} else {
			out.print("yesterday 가 더 크다");
		}
		
		
		
		
		
	%>
</body>
</html>