<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
</head>
<body>
<%
   		//form으로 부터 전송된 유저 정보
    	String id = request.getParameter("id");
    	String pw = request.getParameter("pw");
    	String redirectUrl = "adminForm.jsp"; // 인증 실패시 재요청 될 url 
    	if(id.equals("parksodam")){
    		if(pw.equals("1234")){%>
    		<script>alert("로그인 성공");location.href="index.html";</script>
    		<%session.setAttribute("login", id); //세션 생성
            	redirectUrl = "index.jsp";
    		}
    		else{%>
    		<script>alert("로그인 실패, 다시 로그인 해주세요.");</script>
    		<%}
    	}else{%>
		<script>alert("로그인 실패, 다시 로그인 해주세요.");</script>
		<%}
    	response.sendRedirect(redirectUrl);
%>
</body>
</html>