<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" errorPage="Error.jsp" isErrorPage="true" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

		<h1>1-10������ ���� ����ϱ�</h1>
	<%
		//1-10������ ���� ����ϱ�
		for(int i=1; 1<=10; i++){
	%>
			<%= i %><br>		
	<% 
		}
	%>

</body>
</html>