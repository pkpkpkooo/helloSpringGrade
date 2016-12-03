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
	<p> 2017년도 1학기 수강신청목록</p>
	<TABLE BORDER="1" id="tb">
		<TR>
			<TD>교과코드</TD>
			<TD>교과목명</TD>
			<TD>구분</TD>
			<TD>학점</TD>
		</TR>
		<c:forEach var="offer" items="${offers}">
			<TR>
				<TD>${offer.code}</TD>
				<TD>${offer.subject}</TD>
				<TD>${offer.classification}</TD>
				<TD>${offer.credit}</TD>
			</TR>
		</c:forEach>
	</TABLE>
		<p> <a href="${pageContext.request.contextPath}/"> 홈으로	</a>
	
</body>
</html>