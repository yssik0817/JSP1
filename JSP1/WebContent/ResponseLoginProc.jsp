<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
	<h2>로그인 처리 페이지</h2>
	<%
		request.setCharacterEncoding("UTF-8");
	
		//임의의 id와 pass 설정
		String dbid = "yun";
		String dbpass="1234";
		
		//사용자로부터 넘어온 데이터 입력 받아줌
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		
		if(dbid.equals(id)&&dbpass.equals(pass)){
			//아이디와 패스워드가 일치하면 메인 페이지를 보여준다.
			response.sendRedirect("ResponseMain.jsp?id="+id);
		}else{
	%>
		<script>
			alert("아이디와 패스워드가 일치하지 않습니다.");
			history.go(-1);
		</script>
	<%
		}
	%>
</body>
</html>