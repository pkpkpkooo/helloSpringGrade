<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<p> <a href="${pageContext.request.contextPath}/"> Ȩ ����	</a></p>
	<TABLE BORDER="1">
		<TR>
			<TD>����</TD>
			<TD>�ٱ�A</TD>
			<TD>�ٱ�B</TD>
			<TD>�ϱ�</TD>
			<TD>����</TD>
			<TD>����</TD>
			<TD>����</TD>
			<TD>������</TD>
		</TR>
		<TR>
			<c:forEach var="i" begin="0" end="7" step="1">
				<TD>${classifications[i]}</TD>
			</c:forEach>
		</TR>
	</TABLE>
	
</body>
</html>