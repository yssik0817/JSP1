<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
	<h2>ȸ�� ���� ����</h2>
	<%
		//post������� �����Ͱ� �Ѿ�ö� �ѱ��� ������ �ֱ⶧����
		request.setCharacterEncoding("UTF-8");
		//���� ����ڷκ��� �Ѿ�� ������ ����
		String id = request.getParameter("id");
		String pass1 = request.getParameter("pass1");
		String pass2 = request.getParameter("pass2");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		
		//[] �迭 Ÿ������ ����
		String [] hobby = request.getParameterValues("hobby");
		
		String job = request.getParameter("job");
		String age = request.getParameter("age");
		String info = request.getParameter("info");
		
		if(!pass1.equals(pass2)){
	%>
		<script type="text/javascript">
			alert("��й�ȣ�� Ʋ���ϴ�."); //���â
			history.go(-1); //���� �������� �̵�
		</script>		
	<%
		}
	%>
	
	<table width="400" border="1">
	<tr height="50">
			<td width="150" align="center">���̵�</td>
			<td width="350" align="center"> <%= id %>
		</tr>	
		<tr height="50">
			<td width="150" align="center">�̸���</td>
			<td width="350" align="center"><%= email %>
		</tr>
		<tr height="50">
			<td width="150" align="center">��ȭ��ȣ</td>
			<td width="350" align="center"><%= tel %>
		</tr>
		<tr height="50">
			<td width="150" align="center">���ɺо�</td>
			<td width="350" align="center">
			<% 
				for(int i=0; i<hobby.length; i++){
					out.write(hobby[i]+" ");
				}
			%>
		</tr>
		<tr height="50">
			<td width="150" align="center">����</td>
			<td width="350" align="center"><%= job %>
		</tr>
		<tr height="50">
			<td width="150" align="center">����</td>
			<td width="350" align="center"><%= age%>
		</tr>
		
	</table>
	
	
	
</body>
</html>