<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트 요소</title>
</head>
<body>


	<%
		
		//1번
		Random random = new Random();
		int umm = random.nextInt(50);
		int hum = 0;
		for (int i = 0 ; i <= umm; i++) {
			hum += i;
		}
		
		
	
		//2번
		int sum = 0;
		int[] scores = {80, 90, 100, 95, 80};
		for ( int i = 0; i<scores.length; i++) {
			sum += scores[i];
		}
		double sum1 = sum / (double)scores.length;
		
		
		//3번
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		int number = 0;
		
		for ( int i =0; i<scoreList.size(); i++) {
			if ( scoreList.get(i).equals("O")) {
				number += 10;
			}
		}
		
		
		
		//4번
		String birthDay = "20010820";
		birthDay = birthDay.substring(0,4);
		int a = Integer.parseInt(birthDay);
		
		int result = (2022-a) + 1;
		
		
		int ummm = random.nextInt(45);
		int ummmm = random.nextInt(45);
		int ummmmm = random.nextInt(45);
		int ummmmmm = random.nextInt(45);
		int ummmmmmm = random.nextInt(45);
		
		
		
	%>
	
	
	<h2>1부터 <%=umm %> 까지의 합은 <%=hum %> 입니다.</h2>
	<h2>평균 점수는 <%= sum1 %> 입니다.</h2>
	<h2>채점 결과는 <%= number %> 점 입니다.</h2>
	<h2><%=birthDay %> 의 나이는 <%=result %> 입니다.</h2>
	<h2> 토요일 대비를 위한 로또 번호 랜덤 뽑기 <%=umm %>, <%=ummm %> , <%=ummmm %>, <%= ummmmm %>, <%= ummmmmm %></h2>
	
</body>
</html>