<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
 <script>
    'use strict';
    
    function SearchCheck() {
    	let searchString = $("#searchString").val();
    	
    	if(searchString.trim() == "") {
    		alert("검색어를 입력하세요");
    		searchForm.searchString.focus();
    	}
    	else {
    	  myform.submit();
      }
    }
 	</script>
</head>

<body>
<nav>
	<div class="search-container mb-5">
    <form action="/action_page.php">
      <input type="text" placeholder="Search.." name="searchString" style="width:170px;">
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <jsp:include page="/WEB-INF/views/include/bs4.jsp"></jsp:include>
      
      <button type="button" onclick="SearchCheck();" class="btn" style="padding:0"><i class="material-icons">&#xe8b6;</i></button>
    </form>
  </div>
  <h4>Categories</h4>
  <ul>
    <li><a href="#">공지사항</a></li>
    <li><a href="#">1:1문의게시판(서비스 준비 중)</a></li>
    <li><a href="#"></a></li>
  </ul>
</nav>

</body>
</html>
