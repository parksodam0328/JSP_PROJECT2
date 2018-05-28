<%@page import="java.util.Random"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="main.css">
</head>
<body oncontextmenu="return false">
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
<%
	int cnt1=0;
	int cnt2=0;
	int cnt3=0;
	int cnt4=0;
	int cnt5=0;
	int cnt6=0;
	int cnt7=0;
	int cnt8=0;
	int cnt9=0;
	int cnt10=0;
	int cnt11=0;
	int cnt12=0;
	int cnt13=0;
	int cnt14=0;
	int cnt15=0;
	int cnt16=0;
	int cnt17=0;
	int cnt18=0;
	int cnt19=0;
	int cnt20=0;
	int cnt21=0;
	int cnt22=0;
	int cnt23=0;
	int cnt24=0;

%>
<%
	int event=0;
	int total=0;
	request.setCharacterEncoding("utf-8");
	String res;
	String gift[]={"img/치킨.png","img/팥빙수.PNG","img/피자.png","img/도미노.PNG","img/초코 케익.jpg"};
	int gift_res=0;
	String send = request.getParameter("send");
	if(send !=null && send.equals("ok")){
		res="";
		total=1;
	}else {
	res = request.getParameter("schooluniform");
	String result;
	String filename = "poll.txt";
	PrintWriter writer=null;
	BufferedWriter bufferW = null;
	try{
	String filePath = application.getRealPath("/WEB-INF/bbs/"+filename);
	//out.print(filePath);
	bufferW = new BufferedWriter(new FileWriter(filePath,true)); // 파일 내용 계속 추가
	writer = new PrintWriter(bufferW,true);
	writer.printf("%s%n",res);

    writer.flush();
    File theFile = new File(filePath);
	FileReader theFileReader = new FileReader(theFile); //파일 읽기
	BufferedReader theBufferedReader = new BufferedReader(theFileReader);
	String[] userInfor={};
	String infor=""; // 파일의 내용 한 줄씩 읽어오기 위한 변수 선언
	while((infor = theBufferedReader.readLine())!=null){
    	if (infor.equals("경기관광고")) {
    		cnt1++;
    	}
    	else if (infor.equals("계원예고")) {
    		cnt2++;
    	}
    	else if (infor.equals("고양고")) {
    		cnt3++;
    	}
    	else if (infor.equals("늘푸른고")) {
    		cnt4++;
    	}
    	else if (infor.equals("다산고")) {
    		cnt5++;
    	}
    	else if (infor.equals("동광고")) {
    		cnt6++;
    	}
    	else if (infor.equals("동백고")) {
    		cnt7++;
    	}
    	else if (infor.equals("매화고")) {
    		cnt8++;
    	}
    	else if (infor.equals("백암고")) {
    		cnt9++;
    	}
    	else if (infor.equals("서울공연예술고")) {
    		cnt10++;
    	}
    	else if (infor.equals("서울디지텍고")) {
    		cnt11++;
    	}
    	else if (infor.equals("서창고")) {
    		cnt12++;
    	}
    	else if (infor.equals("석관고")) {
    		cnt13++;
    	}
    	else if (infor.equals("성심여자고")) {
    		cnt14++;
    	}
    	else if (infor.equals("송우고")) {
    		cnt15++;
    	}
    	else if (infor.equals("송탄제일고")) {
    		cnt16++;
    	}
    	else if (infor.equals("야탑고")) {
    		cnt17++;
    	}
    	else if (infor.equals("운산고")) {
    		cnt18++;
    	}
    	else if (infor.equals("인덕원고")) {
    		cnt19++;
    	}
    	else if (infor.equals("청덕고")) {
    		cnt20++;
    	}
    	else if (infor.equals("충훈고")) {
    		cnt21++;
    	}
    	else if (infor.equals("태화국제고")) {
    		cnt22++;
    	}
    	else if (infor.equals("통진고")) {
    		cnt23++;
    	}
    	else if (infor.equals("현화고")) {
    		cnt24++;
    	}
    	total++;
    	}
	
	Random random = new Random();
	event = random.nextInt(total*5)+1;
	//out.print(total+"aaaa");
	//out.print(event);
	//gift_res = random.nextInt(5);
	//out.print(gift[gift_res]);
	if(event==total){%>
	
	 <script langauge="javascript">
	window.open("event.jsp?name=<%=gift[gift_res]%>","asdfo8or","scrollbars=yes,width=500,height=700,top=300,left=500");
	</script>
	<%
	}

	}catch(Exception e){
		out.println("오류발생");
		//result="fail";
	}
}
	
%>
<center>
<a href="index.jsp"><img src="img/img_logo.jpg"></a><br>
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
		<td align="center"><br>
			경기관광고 <div style="height:20px;width:<%= (float)cnt1/total*100%>%;background-color: #cd5c5c;"><%= (float)cnt1/total*100%>%</div><br>

		</td>
		<td align="center"><br>
			계원예고 <div style="height:20px;width:<%= (float)cnt2/total*100%>%;background-color: #cd5c5c;"><%= (float)cnt2/total*100%>%</div><br>
		</td>
		<td align="center"><br>
			고양고 <div style="height:20px;width:<%= (float)cnt3/total*100%>%;background-color: #cd5c5c;"><%= (float)cnt3/total*100%>%</div><br>
		</td>
		<td align="center"><br>
			늘푸른고 <div style="height:20px;width:<%=(float)cnt4/total*100%>%;background-color: #cd5c5c;"><%=(float)cnt4/total*100%>%</div><br>
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
		<td align="center"><br>
			다산고 <div style="height:20px;width:<%= (float)cnt5/total*100%>%;background-color: #cd5c5c;"><%= (float)cnt5/total*100%>%</div><br>
		</td>
		<td align="center"><br>
			동광고 <div style="height:20px;width:<%= (float)cnt6/total*100%>%;background-color: #cd5c5c;"><%= (float)cnt6/total*100%>%</div><br>
		</td>
		<td align="center"><br>
			동백고 <div style="height:20px;width:<%= (float)cnt7/total*100%>%;background-color: #cd5c5c;"><%= (float)cnt7/total*100%>%</div><br>
		</td>
		<td align="center"><br>
			매화고 <div style="height:20px;width:<%= (float)cnt8/total*100%>%;background-color: #cd5c5c;"><%= (float)cnt8/total*100%>%</div><br>
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
			백암고 <div style="height:20px;width:<%= (float)cnt9/total*100%>%;background-color: #cd5c5c;"><%= (float)cnt9/total*100%>%</div><br>
		</td>
		<td align="center">
			서울공연예술고 <div style="height:20px;width:<%= (float)cnt10/total*100%>%;background-color: #cd5c5c;"><%= (float)cnt10/total*100%>%</div><br>
		</td>
		<td align="center">
			서울디지텍고 <div style="height:20px;width:<%= (float)cnt11/total*100%>%;background-color: #cd5c5c;"><%= (float)cnt12/total*100%>%</div><br>
		</td>
		<td align="center">
			서창고 <div style="height:20px;width:<%= (float)cnt12/total*100%>%;background-color: #cd5c5c;"><%= (float)cnt12/total*100%>%</div><br>
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
		<td align="center"><br>
			석관고 <div style="height:20px;width:<%= (float)cnt13/total*100%>%;background-color: #cd5c5c;"><%= (float)cnt13/total*100%>%</div><br>
		</td>
		<td align="center"><br>
			성심여자고 <div style="height:20px;width:<%= (float)cnt14/total*100%>%;background-color: #cd5c5c;"><%= (float)cnt14/total*100%>%</div><br>
		</td>
		<td align="center"><br>
			송우고 <div style="height:20px;width:<%= (float)cnt15/total*100%>%;background-color: #cd5c5c;"><%= (float)cnt15/total*100%>%</div><br>
		</td>
		<td align="center">
			송탄제일고 <div style="height:20px;width:<%= (float)cnt16/total*100%>%;background-color: #cd5c5c;"><%= (float)cnt16/total*100%>%</div><br>
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
		<td align="center"><br>
			야탑고 <div style="height:20px;width:<%= (float)cnt17/total*100%>%;background-color: #cd5c5c;"><%= (float)cnt17/total*100%>%</div><br>
		</td>
		<td align="center"><br>
			운산고 <div style="height:20px;width:<%= (float)cnt18/total*100%>%;background-color: #cd5c5c;"><%= (float)cnt18/total*100%>%</div><br>
		</td>
		<td align="center"><br>
			인덕원고 <div style="height:20px;width:<%= (float)cnt19/total*100%>%;background-color: #cd5c5c;"><%= (float)cnt19/total*100%>%</div><br>
		</td>
		<td align="center"><br>
			청덕고 <div style="height:20px;width:<%= (float)cnt20/total*100%>%;background-color: #cd5c5c;"><%= (float)cnt20/total*100%>%</div><br>
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
		<td align="center"><br>
			충훈고  <div style="height:20px;width:<%= (float)cnt21/total*100%>%;background-color: #cd5c5c;"><%= (float)cnt21/total*100%>%</div><br>
		</td>
		<td align="center"><br>
			태화국제고 <div style="height:20px;width:<%= (float)cnt22/total*100%>%;background-color: #cd5c5c;"><%= (float)cnt22/total*100%>%</div><br>
		</td>
		<td align="center"><br>
			통진고 <div style="height:20px;width:<%= (float)cnt23/total*100%>%;background-color: #cd5c5c;"><%= (float)cnt23/total*100%>%</div><br>
		</td>
		<td align="center"><br>
			현화고<div style="height:20px;width:<%= (float)cnt24/total*100%>%;background-color: #cd5c5c;"><%= (float)cnt24/total*100%>%</div><br>
		</td>
	</tr>
</table>

</center>
<script language='javascript'>

function noEvent() {
if (event.keyCode == 116) {
event.keyCode= 2;
<% res="";%>
return false;
}
else if(event.ctrlKey && (event.keyCode==78 || event.keyCode == 82))
{
return false;
}
}
document.onkeydown = noEvent;

</script>
<center>
				<form action="comment.jsp">
					<input type="text" name="name" style="width:400px;" placeholder="이름"><br>
					<input type="textarea" name="content" row="10" style="width:400px;"placeholder="내용"><br>
					<input type="submit" value="댓글달기">
				</form>
				<center></center>
				<%
				try{
				String filePath = application.getRealPath("/WEB-INF/commend/");
				File theDir = new File(filePath);
				File[] filelist = theDir.listFiles();
				String filename;
					//out.print(r);
					for(File tempFile : filelist) {
			  			if(tempFile.isFile()) {
			  			int index = tempFile.getName().indexOf("."); 
			 			filename = tempFile.getName().substring(0, index);
			 			BufferedReader reader=null;
					
					String filePath2 = application.getRealPath("/WEB-INF/commend/"+filename+".txt");
					String[] text;
					reader = new BufferedReader(new FileReader(filePath2));
		
					while(true){
						String str = reader.readLine();
						if(str==null) break;
						text = str.split("/");
			%>
						
						<form action="commentDelete.jsp">
						<table>
							<tr>
							<hr>
								<td rowspan="2" width="30px"><input type="radio" name="value" value="<%=text[0]%>/<%=text[1]%>/<%=filename%>"></td>
								<td width="400px" style="font-size:13px;"><%=filename%></td>
								</tr>
							<tr>
								<td width="400px"><%=text[1]%></td>
							</tr>
						</table>
						
					<%}}} if(id!=null){%>
					<input type="submit" value="댓글 삭제">
						</form>
					<%}else{}
			}catch(Exception e){
				out.println("댓글이 없습니다");
			}%>

	</center>
</body>
</html>
