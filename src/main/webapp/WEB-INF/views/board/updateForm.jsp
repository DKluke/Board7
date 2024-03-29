<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" type="image/png" href="/img/favicon.png" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet" href="/css/common.css" />
<style>
input:not(input[type=submit]) {
	width: 100%;
}

input[type=submit] {
	width: 100px;
}

#goList {
	width: 80px;
}

td {
	padding: 10px;
	width: 700px;
	text-align: center;
}

td:nth-of-type(1) {
	width: 200px;
}

td:nth-of-type(2) {
	text-align: left;
}

td:not([colspan]):first-child {
	background: black;
	color: white;
	font-weight: bold;
}

input[readonly] {
	background: #A0A0A0;
}

textarea {
	width: 100%;
	height: 300px;
	resize: none;
}
</style>
<script href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js
"></script>
<script src="https://cdn.jsdelivr.net/npm/browser-scss@1.0.3/dist/browser-scss.min.js"></script>


</head>
<body>
	<main>
		<h2>사용자 상세 정보</h2>
		<form action="/Board/Update?bno=${vo.bno}" method="POST">
			<table>
				<tr>
					<td>제목</td>
					<td><input type="text" name="title" value="${vo.title}" /></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td><input type="text" name="writer" value="${vo.writer}"/></td>
				</tr>
				<tr>
					<td>내용</td>
					<td><textarea name="content"  />${vo.content }</textarea></td>
				</tr>
				<tr>
					<td colspan="4"><input class="btn btn-dark btn-sm" type="submit" value="수정" /> 
					<input	class="btn btn-dark btn-sm" type="button" value="취소" id="goList" /></td>
				</tr>
			</table>
		</form>

	</main>

	<script>
		const goListEl = document.getElementById('goList');
		goListEl.addEventListener('click', function(e) {
			location.href = '/Board/View?bno=${vo.bno}';
		})
	</script>

</body>
</html>

