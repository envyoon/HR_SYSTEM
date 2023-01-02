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

// 수정해야하는 부분 22.12.23
/**
function goDetail(im_key){
	// get방식으로 상세화면 이동..
	location.href="${path}/HRDetail?im_key="+im_key;	
}

function insertPage(){
	
	location.href="${path}/HrInsertPage";	
}
*/

</script>


</head>
<body>


<div class="jumbotron text-center">
  <h2>인사정보리스트</h2>

</div>

<div class="container">

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
    
    <div class="modal-footer">
	        <button type="button"  onclick="insertPage()">등록하기</button>
	</div>
    
</div>

    
</body>
</html>