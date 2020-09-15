<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" errorPage="Error.jsp" isErrorPage="true" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

		<h1>1-10까지의 숫자 출력하기</h1>
	<%
		//1-10까지의 숫자 출력하기
		for(int i=1; 1<=10; i++){
	%>
			<%= i %><br>		
	<% 
		}
	%>

</body>
</html>