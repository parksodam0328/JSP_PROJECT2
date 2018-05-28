<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="main.css">
</head>
<body>
<%
	String result="ok";
%>
<%
	String id = (String)session.getAttribute("login");
	if(id==null){
%>
<div align="right">
	<input type="button" style="width:150px;" value="관리자페이지" onclick="location.href='adminForm.jsp'">
</div>
<%
}else{
	
%>
<div align="right">
	<input type="button" style="width:150px;" value="<%=id %> 로그아웃" onclick="location.href='logoutProc.jsp'">
</div>
<%
}
%>
<center>
<a href="index.jsp"><img src="img/img_logo.jpg"></a><br>
<table width="100%" height="80%">
	<tr>
		<td background="img/bts.PNG" width="50%" height="800px" align="center">
			<a href="poll.jsp"><input type="button" value="설문조사"></a>
		</td>
		<td background="img/girl.PNG" width="50%" height="800px" align="center">
			<a href="pollProc.jsp?send=<%= result%>"><input type="button" value="결과보기" ></a>
		</td>
	</tr>
</table>
</center>
</body>
</html>