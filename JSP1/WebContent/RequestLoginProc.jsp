<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
	<!-- RequestLogin에서 넘어온 아이디와 패스워드를 읽어옴  -->
	<%
		//사용자의 정보가 저장되어 있는 객체 request의 getParameter() 사용자의 정보 추출
		String id = request.getParameter("id");
		//사용자의 id를 받아id에 저장
		String pass = request.getParameter("pass");
	%>
	
	<h2>
	당신의 아이디는 <%= id %> 이고 패스워드는 <%= pass %>입니다.
	</h2>
	
	<a href="RequestForward.jsp">다음페이지</a>
</body>
</html>