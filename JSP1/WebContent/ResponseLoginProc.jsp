<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
	<h2>�α��� ó�� ������</h2>
	<%
		request.setCharacterEncoding("UTF-8");
	
		//������ id�� pass ����
		String dbid = "yun";
		String dbpass="1234";
		
		//����ڷκ��� �Ѿ�� ������ �Է� �޾���
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		
		if(dbid.equals(id)&&dbpass.equals(pass)){
			//���̵�� �н����尡 ��ġ�ϸ� ���� �������� �����ش�.
			response.sendRedirect("ResponseMain.jsp?id="+id);
		}else{
	%>
		<script>
			alert("���̵�� �н����尡 ��ġ���� �ʽ��ϴ�.");
			history.go(-1);
		</script>
	<%
		}
	%>
</body>
</html>