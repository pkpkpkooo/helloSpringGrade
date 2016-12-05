<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>


<body>
	<TABLE BORDER="1">
		<TR>
			<TD>�����⵵</TD>
			<TD>�б�</TD>
			<TD>�̼�����</TD>
			<TD>�󼼺���</TD>
		</TR>
		<c:forEach var="i" begin="0" end="7" step="1">
			<TR>
				<TD>${years[i]}</TD>
				<TD>${terms[i]}</TD>
				<TD>${credits[i]}</TD>
				<TD><a href="${pageContext.request.contextPath}/checkbyterm?term=${i}">��ũ</a></TD>
			</TR>
		</c:forEach>
	</TABLE>

	<TABLE BORDER="1" id="tb">
		<TR>
			<TD>�����⵵</TD>
			<TD>�б�</TD>
			<TD>�����ڵ�</TD>
			<TD>�������</TD>
			<TD>����</TD>
			<TD>����</TD>
		</TR>
		<c:forEach var="offer" items="${offers[term]}">
			<TR>
				<TD>${offer.year}</TD>
				<TD>${offer.term}</TD>
				<TD>${offer.code}</TD>
				<TD>${offer.subject}</TD>
				<TD>${offer.classification}</TD>
				<TD>${offer.credit}</TD>
			</TR>
		</c:forEach>
	</TABLE>
	<p> <a href="${pageContext.request.contextPath}/"> Ȩ ����	</a></p>
</body>
</html>