<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String userId = request.getParameter("name");
String content = request.getParameter("content");
String result;

SimpleDateFormat  dateFormat = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss");
Date date = new Date();
String time = dateFormat.format(date);
String filename = userId+time+".txt";

//out.println(filename);
PrintWriter writer=null;

try{
	String filePath = application.getRealPath("/WEB-INF/commend/"+filename);
	out.println(filePath);
	writer = new PrintWriter(filePath);
	
	writer.printf("%s/",userId);
	writer.printf(content);
	writer.printf("\n");
	
	writer.flush();
	result="ok";
}catch(Exception e){
	out.println("오류발생");
	result="fail";
}

response.sendRedirect("pollProc.jsp?result="+result+"&title="+filename+"&check="+userId);

%>
</body>
</html>