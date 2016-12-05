<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Registration Form</title>
</head>
<script>
var n = 0;
	function add_row(i) {
		//alert('aa');
		n++;
		mytable = document.getElementById('coursetable');
		row = mytable.insertRow(mytable.rows.length);
		cell1 = row.insertCell(0);
		cell2 = row.insertCell(1);
		cell3 = row.insertCell(2);
		cell4 = row.insertCell(3);
		cell1.innerHTML = '<input type="text" name="subject' + n + '"/>';
		cell2.innerHTML = '<input type="text" name="code' + n + '"/>';
		cell3.innerHTML = '<input type="text" name="classification' + n + '"/>';
		cell4.innerHTML = '<input type="text" name="credit' + n + '"/>';
		//${sNum = n};
	}
	function delete_row() {
		mytable = document.getElementById('coursetable');
		if (mytable.rows.length < 2)
			return;
		mytable.deleteRow(mytable.rows.length - 1);
		//${sNum = n};
	}
</script>


<body>
	<h1>2017년도 1학기 수강신청</h1>

	<p>공백이 없도록 작성해주세요. 학점란에는 숫자만 기재해 주세요</p>

	<form action="/helloSpringMVC/registed" method="get">
		<table border="1" id="coursetable">
			<tr>
				<td>교과목명</td>
				<td>과목코드</td>
				<td>구분</td>
				<td>학점</td>
			</tr>
		</table>
		<input type="button" value="+" onClick="add_row(${n})" /> <input
			type="button" value="-" onClick="delete_row(${n})" /> <input
			type="submit" name="isCheck" value="수강신청" />
	</form>
	<p>
		<a href="${pageContext.request.contextPath}/"> 홈 으로 </a>
	</p>
</body>
</html>