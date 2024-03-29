<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core"  %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="icon" type="image/png" href="/img/favicon.png" />
<link rel="stylesheet"  href="/css/common.css" />
<script src="https://cdn.jsdelivr.net/npm/browser-scss@1.0.3/dist/browser-scss.min.js"></script>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
  td { 
    padding     : 10px;  
    width       : 150px;
    text-align  : center; 
  }
  
  tr:first-child {
     background-color: black;
     color : white;
     font-weight: bold;     
  }
  tr:first-child > td {
     border-color : red;
  }  
  
  tr:nth-child(2) > td {
     text-align : right;
  }
  
</style>

</head>
<body>
	<main>  
	  <h2>사용자 목록</h2>
	  <table>
	    <tr>
	      <td>아이디</td>
	      <td>이름</td>
	      <td>이메일</td>
	      <td>포인트</td>
	      <td>가입일</td>

	    </tr>
	    <tr>
	      <td colspan="5">
	          
	      </td>
	    </tr>
	    
	    <c:forEach  var="userVo"  items="${ userList }" >
	    <tr>
	      <td>${ userVo.userid    }</td>
	      <td><a href="/Users/View?userid=${userVo.userid}">${ userVo.username  }</a></td>
	      <td>${ userVo.email     }</td>	      
	      <td>${ userVo.upoint    }</td>	      
	      <td>${ userVo.indate    }</td>	      
	    </tr>
	    </c:forEach>
	    
	    	 <tr>
	   <td colspan="5">
	    <a class="btn btn-dark btn-sm" role="button" 
	    href="/Users/WriteForm">회원가입</a>
	    
	    <a class="btn btn-dark btn-sm" role="button" 
	    href="/" >Home</a>
	   </td>
	 </tr>
	    	    
	  </table>
	
	</main>

</body>
</html>








