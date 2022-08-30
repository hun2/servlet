<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
	
		String nickname = request.getParameter("nickname");
		String hobby = request.getParameter("hobby");
		String animal = request.getParameter("animal");
		String[] foodArr = request.getParameterValues("food"); // 선택 항목이 여러개 일때는 values 로 가져와야한다.
		String fruit = request.getParameter("fruit");
		
		
		
	%>
	
	
		<table border=1>
			
			<tr>
				<th> 별명 </th>
				<td> <%= nickname %> </td>
			</tr>
			
			<tr>
				<th> 취미 </th>
				<td> <%= hobby %> </td>
			</tr>
			
			<tr>
				<th> 동물 </th>
				<td> <%= animal %> </td>
			</tr>
			
			<tr>
				<th> 음식 </th>
				<td> <%-- <%= foodArr %> --%>
				
				<%
					if ( foodArr != null) {
						
						String result = "";
						for(String food : foodArr) {
							result += food + ",";
							
						}
						// abc ab만 출력하고 싶을때 substring(0,2);
						result = result.substring(0, result.length() -1);
						
						out.print(result);
					}
					
				
				%>
				
				
				</td>
			</tr>
			
			<tr>
				<th> 과일 </th>
				<td> <%= fruit %> </td>
			</tr>
		</table>
	
	
</body>
</html>