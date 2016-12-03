<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType = "text/html;charset=utf-8" %>
<% request.setCharacterEncoding("UTF-8");%>
<html>
<head>
	<title>Home</title>
</head>
<body>

	<p> <a href="${pageContext.request.contextPath}/checkbyterm?term=0"> 학기별 이수 학점 조회	</a>
	<p> <a href="${pageContext.request.contextPath}/checkbyclassification"> 이수 구분별 학점 조회	</a>
	<p> <a href="${pageContext.request.contextPath}/courseregister?sNum=0"> 수강 신청하기	</a>
	<p> <a href="${pageContext.request.contextPath}/registed?isCheck=1"> 수강 신청 조회	</a>
	

</body>
</html>
