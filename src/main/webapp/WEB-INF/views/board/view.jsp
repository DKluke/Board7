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

  
   #table {
     td {
      text-align :center;
      padding :10px;
      margin-botton : 200px;
      
      &:nth-of-type(1) { width : 200px; 
          background-color : black;
          color            : white; 
      }
      &:nth-of-type(2) { width : 200px;  }
      &:nth-of-type(3) { width : 200px; 
          background-color : black;
          color            : white;
      }
      &:nth-of-type(4) { width : 200px;  }    
     }
     
     tr:nth-of-type(3) td:nth-of-type(2) {
     	   text-align:left;     
     }
     
    tr:nth-of-type(4) td[colspan] {
           height : 250px;
           width  : 600px;  
           text-align : left;
           vertical-align : baseline;            
    }
    tr:last-child td {
           background-color : white;
           color            : black;   
    }
   }
   
      


</style>

<script href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js
"></script>
<script src="https://cdn.jsdelivr.net/npm/browser-scss@1.0.3/dist/browser-scss.min.js"></script>


</head>
<body>
	<main>
		 <%@include file="/WEB-INF/include/menus.jsp" %>
	
		<h2>게시글 조회</h2>
		<table id="table">
				<tr>
					<td>글번호</td>
					<td>${ vo.bno }</td>
					<td>조회수</td>
					<td>${ vo.hit }</td>
				</tr>
				
				<tr>
					<td>작성자</td>
					<td>${ vo.writer }</td>
					<td>작성일</td>
					<td>${ vo.regdate }</td>
				</tr>
				
				<tr>
					<td>제목</td>
					<td colspan="3">${ vo.title }</td>
				</tr>
				<tr>
					<td>내용</td>
					<td colspan="3" >${ vo.content }</td>
				</tr>

			<tr>
				<td colspan="4">
				<a class="btn btn-dark btn-sm" role="button"href="/Board/WriteForm?menu_id=${vo.menu_id }">새글쓰기</a> &nbsp;&nbsp;
				<a class="btn btn-dark btn-sm" role="button"href="/Board/UpdateForm?bno=${vo.bno}">수정</a> &nbsp;&nbsp;
				<a class="btn btn-dark btn-sm" role="button"href="/Board/Delete?bno=${vo.bno}&menu_id=${vo.menu_id}">삭제</a> &nbsp;&nbsp;
				<a class="btn btn-dark btn-sm" role="button"href="/Board/List?menu_id=${vo.menu_id }">목록으로</a> &nbsp;&nbsp;
				<a class="btn btn-dark btn-sm" role="button"href="/">HOME</a></td>
			</tr>
		</table>

	</main>

	<script>
		const goListEl = document.getElementById('goList');
		goListEl.addEventListener('click', function(e) {
			location.href = '/Board/List';
		})
	</script>

</body>
</html>

