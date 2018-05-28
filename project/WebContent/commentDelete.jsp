<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.File"%>
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
	try{
		File file;
		String filePath;
		String product = request.getParameter("value");
		String[] text = product.split("/");
			filePath = application.getRealPath("/WEB-INF/commend/"+text[2]+".txt");
			
			file = new File(filePath);
			if(file.isFile()){
				
	            if(file.delete()){out.print(file.delete());%>
	                <center><span style="color:#cd5c5c; font-size:40px;font-weight:900;">게시글이 삭제되었습니다.</span></center>
	            <%}else{%>
	               <center><span style="color:#cd5c5c; font-size:40px;font-weight:900;">게시글 삭제를 실패했습니다.</span></center>
	            <%}
	        }else{%>
	        	<center><span style="color:#cd5c5c; font-size:40px;font-weight:900;"><%=text[2] %>가 존재하지 않습니다.</span></center>
	       <% 
		}
		}catch(Exception e){
			e.toString();
		}
%>
</body>
</html>