<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:requestEncoding value="utf-8"/>   
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

function goPage(im_key){
	$("[name=curPage]").val(im_key);
	$("#frm01").submit();
}	


//ajax
$(document).ready(function(){
	var pageSize="${pagingVO.pageSize}"
	console.log(pageSize);
		$("[name=pageSize]").val(pageSize);
		$("[name=pageSize]").change(function(){
			$("[name=curPage]").val(1);
			$("#frm01").submit();
	});	
});


</script>


</head>
<body>


<div class="jumbotron text-center">
  <h2>인사정보리스트</h2>

</div>

<div class="container">

	
	
	

	<!--/* 검색영역 */-->
	<form id="frm01" class="form-inline"  method="post">
		
	<!-- 클릭한 페이지 번호 -->
	<!-- 이거 자꾸 오류남 확인해야함 -->
	<input type="hidden" name="curPage" value=1/>
	<input type="hidden" name="pageSize" value=5 />
		
	  	<nav class="navbar navbar-expand-sm navbar-dark">
		    <input class="form-control mr-sm-2" placeholder="검색 내용" name="sch" value="${hrlist.sch}"/>
		    <select name="kind" class="form-control mr-sm-2">
					<option value=""></option>
					<option>이름</option>
					<option>부서</option>
			</select>

					
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
		  	<a class="page-link" href="javascript:goPage(${pagingVO.startBlock!=1?pagingVO.startBlock-1:1})">
		  		Previous
		  	</a>
		  </li>
		  
		  <!-- 가운데 페이지 갯수 보여주기  -->
		  <c:forEach var="cnt" begin="${pagingVO.startBlock}" end="${pagingVO.endBlock}">
		  	<li class="page-item ${cnt==pagingVO.curPage?'active':''}"> 
		  		<a class="page-link" href="#" onclick="goPage(${cnt});">
		  			${cnt}
		  		</a>
		  	</li>
		  </c:forEach>
		  
		  <!-- 페이지 뒤로 이동 -->
		  <li class="page-item">
		  	<a class="page-link" href="javascript:goPage(${pagingVO.endBlock!=pagingVO.pageCount?pagingVO.endBlock+1:pagingVO.endBlock})">
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