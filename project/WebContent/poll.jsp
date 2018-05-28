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
<form action="pollProc.jsp">
<table cellspacing="30">
	<tr>
		<td>
			<img src="img/경기관광고.jpg" width="350px">
		</td>
		<td>
			<img src="img/계원예고.jpg" width="350px">
		</td>
		<td>
			<img src="img/고양고.jpg" width="350px">
		</td>
		<td>
			<img src="img/늘푸른고.jpg" width="350px">
		</td>
	</tr>
	<tr>
		<td align="center">
			경기관광고<br><input type="radio" name="schooluniform" value="경기관광고" />
		</td>
		<td align="center">
			계원예고<br><input type="radio" name="schooluniform" value="계원예고" />
		</td>
		<td align="center">
			고양고<br><input type="radio" name="schooluniform" value="고양고" />
		</td>
		<td align="center">
			늘푸른고<br><input type="radio" name="schooluniform" value="늘푸른고" />
		</td>
	</tr>
	<tr>
		<td>
			<img src="img/다산고.jpg" width="350px">
		</td>
		<td>
			<img src="img/동광고.jpg" width="350px">
		</td>
		<td>
			<img src="img/동백고.jpg" width="350px">
		</td>
		<td>
			<img src="img/매화고.jpg" width="350px">
		</td>
	</tr>
	<tr>
		<td align="center">
			다산고<br><input type="radio" name="schooluniform" value="다산고" />
		</td>
		<td align="center">
			동광고<br><input type="radio" name="schooluniform" value="동광고" />
		</td>
		<td align="center">
			동백고<br><input type="radio" name="schooluniform" value="동백고" />
		</td>
		<td align="center">
			매화고<br><input type="radio" name="schooluniform" value="매화고" />
		</td>
	</tr>
	<tr>
		<td>
			<img src="img/백암고.jpg" width="350px">
		</td>
		<td>
			<img src="img/서공예.jpg" width="350px">
		</td>
		<td>
			<img src="img/서울디지텍고.jpg" width="350px">
		</td>
		<td>
			<img src="img/서창고.jpg" width="350px">
		</td>
	</tr>
	<tr>
		<td align="center">
			백암고<br><input type="radio" name="schooluniform" value="백암고" />
		</td>
		<td align="center">
			서울공연예술고<br><input type="radio" name="schooluniform" value="서울공연예술고" />
		</td>
		<td align="center">
			서울디지텍고<br><input type="radio" name="schooluniform" value="서울디지텍고" />
		</td>
		<td align="center">
			서창고<br><input type="radio" name="schooluniform" value="서창고" />
		</td>
	</tr>
	<tr>
		<td>
			<img src="img/석관고.jpg" width="350px">
		</td>
		<td>
			<img src="img/성심여자고.jpg" width="350px">
		</td>
		<td>
			<img src="img/송우고.jpg" width="350px">
		</td>
		<td>
			<img src="img/송탄제일고.jpg" width="350px">
		</td>
	</tr>
	<tr>
		<td align="center">
			석관고<br><input type="radio" name="schooluniform" value="석관고" />
		</td>
		<td align="center">
			성심여자고<br><input type="radio" name="schooluniform" value="성심여자고" />
		</td>
		<td align="center">
			송우고<br><input type="radio" name="schooluniform" value="송우고" />
		</td>
		<td align="center">
			송탄제일고<br><input type="radio" name="schooluniform" value="송탄제일고" />
		</td>
	</tr>
	<tr>
		<td>
			<img src="img/야탑고.jpg" width="350px">
		</td>
		<td>
			<img src="img/운산고.jpg" width="350px">
		</td>
		<td>
			<img src="img/인덕원.jpg" width="350px">
		</td>
		<td>
			<img src="img/청덕고.jpg" width="350px">
		</td>
	</tr>
	<tr>
		<td align="center">
			야탑고<br><input type="radio" name="schooluniform" value="야탑고" />
		</td>
		<td align="center">
			운산고<br><input type="radio" name="schooluniform" value="운산고" />
		</td>
		<td align="center">
			인덕원고<br><input type="radio" name="schooluniform" value="인덕원고" />
		</td>
		<td align="center">
			청덕고<br><input type="radio" name="schooluniform" value="청덕고" />
		</td>
	</tr>
	<tr>
		<td>
			<img src="img/충훈고등학교.jpg" width="350px">
		</td>
		<td>
			<img src="img/태화국제고.jpg" width="350px">
		</td>
		<td>
			<img src="img/통진고.jpg" width="350px">
		</td>
		<td>
			<img src="img/현화고.jpg" width="350px">
		</td>
	</tr>
	<tr>
		<td align="center">
			충훈고<br><input type="radio" name="schooluniform" value="충훈고" />
		</td>
		<td align="center">
			태화국제고<br><input type="radio" name="schooluniform" value="태화국제고" />
		</td>
		<td align="center">
			통진고<br><input type="radio" name="schooluniform" value="통진고" />
		</td>
		<td align="center">
			현화고<br><input type="radio" name="schooluniform" value="현화고" />
		</td>
	</tr>
</table>

<input type="submit" value="결과 보기">
</form>
</center>
</body>
</html>