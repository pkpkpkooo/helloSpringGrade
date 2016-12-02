<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>

	<p> <a href="${pageContext.request.contextPath}/checkbyterm"> 학기별 이수 학점 조회	</a>
	<p> <a href="${pageContext.request.contextPath}/checkbyclassification"> 이수 구분별 학점 조회	</a>
	<p> <a href="${pageContext.request.contextPath}/offers"> 수강 신청하기	</a>
	<p> <a href="${pageContext.request.contextPath}/offers"> 수강 신청 조회	</a>
	

</body>
</html>
