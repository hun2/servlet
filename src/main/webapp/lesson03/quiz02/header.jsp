<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header class="d-flex mt-3">
		<div class="col-2">
			<h2 class="text-success">
			<a href="/lesson03/quiz02/list_template.jsp">
			Melong
			</a>
			
			</h2>
		</div>
	<form method="get" action="/lesson03/quiz02/info_template.jsp">
		<div class="input-group">
			<input type="text" class="form-control col-10" name="search" value="<%= request.getParameter("search") %>">
			<button type="submit" class="btn btn-primary text-white">검색</button>
		</div>
		
		
	</form>
</header>