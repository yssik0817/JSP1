<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
	<h2>회원 정보 보기</h2>
	<%
		//post방식으로 데이터가 넘어올때 한글이 깨질수 있기때문에
		request.setCharacterEncoding("UTF-8");
		//각종 사용자로부터 넘어온 데이터 저장
		String id = request.getParameter("id");
		String pass1 = request.getParameter("pass1");
		String pass2 = request.getParameter("pass2");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		
		//[] 배열 타입으로 리턴
		String [] hobby = request.getParameterValues("hobby");
		
		String job = request.getParameter("job");
		String age = request.getParameter("age");
		String info = request.getParameter("info");
		
		if(!pass1.equals(pass2)){
	%>
		<script type="text/javascript">
			alert("비밀번호가 틀립니다."); //경고창
			history.go(-1); //이전 페이지로 이동
		</script>		
	<%
		}
	%>
	
	<table width="400" border="1">
	<tr height="50">
			<td width="150" align="center">아이디</td>
			<td width="350" align="center"> <%= id %>
		</tr>	
		<tr height="50">
			<td width="150" align="center">이메일</td>
			<td width="350" align="center"><%= email %>
		</tr>
		<tr height="50">
			<td width="150" align="center">전화번호</td>
			<td width="350" align="center"><%= tel %>
		</tr>
		<tr height="50">
			<td width="150" align="center">관심분야</td>
			<td width="350" align="center">
			<% 
				for(int i=0; i<hobby.length; i++){
					out.write(hobby[i]+" ");
				}
			%>
		</tr>
		<tr height="50">
			<td width="150" align="center">직업</td>
			<td width="350" align="center"><%= job %>
		</tr>
		<tr height="50">
			<td width="150" align="center">나이</td>
			<td width="350" align="center"><%= age%>
		</tr>
		
	</table>
	
	
	
</body>
</html>