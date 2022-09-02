<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 정적 방식일때는 이것만 있으면 된다. -->



<p>
	현재시간 : <%= Calendar.getInstance().getTime() %>

</p>
