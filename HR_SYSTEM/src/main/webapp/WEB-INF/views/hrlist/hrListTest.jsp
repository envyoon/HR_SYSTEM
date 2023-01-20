<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HR LIST TEST</title>

<!-- 제이쿼리 CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

<!-- CSS 링크 -->
<link rel="stylesheet" href="resources/lib/bootstrap.min.css" >
<link rel="stylesheet" href="resources/lib/jquery-ui.css" >
<link rel="stylesheet" href="resources/css/main.css" >



<script>


// 상세 페이지로 이동하는 함수.
function goDetail(imKey){
	location.href="${path}/hrDetail?imKey="+imKey;	
}

// 인사정보 등록하는 페이지로 이동하는 함수.
function insertPage(){	
	location.href="${path}/hrInsertPage";	
}


// 페이지 이동하는 함수
/* function goPage(no){
	$("[name=curPage]").val(no);
	$("#frm01").submit();
} */

function Previous(no){
	$("[name=curPage]").val(no);
	$("#frm01").submit();
	
	${hrlist.startBlock!=1?hrlist.startBlock-1:1}
}

function cnt(no){
	
}

function Next(no){
	
}

</script>


</head>
<body>


<div class="jumbotron text-center">
  <h2>인사정보리스트</h2>

</div>

<div class="container">

	<!--/* 검색영역 */-->
	<form id="frm01" class="form-inline"  method="post">
			
	  	<nav class="navbar navbar-expand-sm navbar-dark">
		    <input class="form-control mr-sm-2" placeholder="검색 내용" name="sch" value="${hrlist.sch}"/>
		    <select name="kind" class="form-control mr-sm-2">
					<option value=""></option>
					<option>이름</option>
					<option>부서</option>
			</select>
			
			<script type="text/javascript">
				$("[name=kind]").val("${hrlist.kind}")
			
			</script>
					
		    <button class="btn btn-primary" type="submit">검색</button>
	 	</nav>
	</form>
	
	
	<br>
	
	<!-- 페이지 내용 -->
   <table class="table table-hover table-striped">
   	<col width="10%">
   	<col width="10%">
   	<col width="10%">
   	<col width="10%">
   	<col width="10%">
   	<col width="10%">
   	<col width="10%">
    <thead>
      <tr class="table-success text-center">
        <th>사번</th>
        <th>이름(한글)</th>
        <th>이름(영문)</th>
        <th>직급</th>
        <th>부서</th>
        <th>입사날짜</th>
        <th>생년월일</th>
      </tr>
    </thead>	
    <tbody class="text-center">
    	<c:forEach var="hrlist" items="${hrdata}">
	    	<tr ondblclick="goDetail(${hrlist.imKey})">
	    		<td>${hrlist.imKey}</td>
	    		<td>${hrlist.imUserNameKr}</td>
	    		<td>${hrlist.imUserNameEn}</td>
	    		<td>${hrlist.imUserRank}</td>
	    		<td>${hrlist.imDept}</td>
	    		<td><fmt:formatDate value="${hrlist.imHireDate}"/></td>
	    		<td><fmt:formatDate value="${hrlist.birymd}"/></td>
	    	</tr>
    	</c:forEach>
    </tbody>
	</table>    
    
    <!--  페이징 처리 --> 
    <ul class="pagination  justify-content-end">
    
    	  <!-- 페이지 앞으로 이동 -->
		  <li class="page-item">
		  	<!-- <a class="page-link" href="javascript:Previous(${hrlist.startBlock!=1?hrlist.startBlock-1:1})">  -->
		  	<a class="page-link" href="#" onclick="Previous();">
		  		Previous
		  	</a>
		  </li>
		  
		  <!-- 가운데 페이지 갯수 보여주기  -->
		  <c:forEach var="cnt" begin="${hrlist.startBlock}" end="${hrlist.endBlock}">
		  	<li class="page-item ${cnt==hrlist.curPage?'active':''}"> 
		  		<!--  <a class="page-link" href="javascript:goPage(${cnt})"> -->
		  		<a class="page-link" href="#" onclick="cnt();">
		  			${cnt}
		  		</a>
		  	</li>
		  </c:forEach>
		  
		  <!-- 페이지 뒤로 이동 -->
		  <li class="page-item">
		  	<!-- <a class="page-link" href="javascript:Next(${hrlist.endBlock!=hrlist.pageCount?hrlist.endBlock+1:hrlist.endBlock})">  -->
		  	<a class="page-link" href="#" onclick="Next();">
		  		Next
		  	</a>
		  </li>
		  
	</ul>
     
    
    <!-- 등록하기 버튼  -->
    <div class="modal-footer">
	        <button type="button"  onclick="insertPage()">등록하기</button>
	</div>
    
    
    
</div>

    
</body>
</html>