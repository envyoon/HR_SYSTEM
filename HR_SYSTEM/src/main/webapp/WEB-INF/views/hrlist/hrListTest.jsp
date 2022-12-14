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


</script>


</head>
<body>


<div class="jumbotron text-center">
  <h2>인사정보리스트</h2>

</div>

<div class="container">

	<!--/* 검색영역 */--> <!-- 추가하여야 함 230111 -->
	<div class="search_box">
	    <form id="searchForm" onsubmit="return false;" autocomplete="off">
	        <div class="sch_group fl">
	            <select id="searchType" name="searchType" title="검색 유형 선택">
	                <option value="{HrListTestVO.imUserName}">이름(한글)</option>
	                <option value="{HrListTestVO.imDept}">부서</option>
	                <option value="{HrListTestVO.imRank}">직급</option>
	            </select>
	            <input type="text" id="keyword" name="keyword" placeholder="키워드를 입력해 주세요." title="키워드 입력" />
	            <button type="button" class="bt_search" onclick="movePage(1);"><i class="fas fa-search"></i><span class="skip_info">검색</span></button>
	        </div>
	    </form>
	</div>
	
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
    
    <!--  페이징 처리 
    <ul class="pagination  justify-content-end">
		  <li class="page-item"><a class="page-link" 
		  	href="javascript:goPage(${boardSch.startBlock!=1?boardSch.startBlock-1:1})">Previous</a></li>
		  <c:forEach var="cnt" begin="${boardSch.startBlock}" end="${boardSch.endBlock}">
		  	<li class="page-item ${cnt==boardSch.curPage?'active':''}"> 
		  		<a class="page-link" href="javascript:goPage(${cnt})">${cnt}</a></li>
		  </c:forEach>
		  <li class="page-item"><a class="page-link" 
		  	href="javascript:goPage(${boardSch.endBlock!=boardSch.pageCount?boardSch.endBlock+1:boardSch.endBlock})">Next</a></li>
	</ul>
     -->
    
    <!-- 등록하기 버튼  -->
    <div class="modal-footer">
	        <button type="button"  onclick="insertPage()">등록하기</button>
	</div>
    
    
    
</div>

    
</body>
</html>