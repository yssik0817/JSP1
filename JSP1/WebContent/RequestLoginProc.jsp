<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
	<!-- RequestLogin���� �Ѿ�� ���̵�� �н����带 �о��  -->
	<%
		//������� ������ ����Ǿ� �ִ� ��ü request�� getParameter() ������� ���� ����
		String id = request.getParameter("id");
		//������� id�� �޾�id�� ����
		String pass = request.getParameter("pass");
	%>
	
	<h2>
	����� ���̵�� <%= id %> �̰� �н������ <%= pass %>�Դϴ�.
	</h2>
	
	<a href="RequestForward.jsp">����������</a>
</body>
</html>