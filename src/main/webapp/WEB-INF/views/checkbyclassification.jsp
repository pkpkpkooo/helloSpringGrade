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
<p> <a href="${pageContext.request.contextPath}/"> 홈 으로	</a></p>
	<TABLE BORDER="1">
		<TR>
			<TD>교필</TD>
			<TD>핵교A</TD>
			<TD>핵교B</TD>
			<TD>일교</TD>
			<TD>전지</TD>
			<TD>전기</TD>
			<TD>전선</TD>
			<TD>총학점</TD>
		</TR>
		<TR>
			<c:forEach var="i" begin="0" end="7" step="1">
				<TD>${classifications[i]}</TD>
			</c:forEach>
		</TR>
	</TABLE>
	
</body>
</html>