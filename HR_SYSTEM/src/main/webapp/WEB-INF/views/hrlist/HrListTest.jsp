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
   	<!-- <col width="20%"> -->
    <thead>
      <tr class="table-success text-center">
        <th>IM_KEY</th>
        <th>IM_USER_ID</th>
        <th>IM_USER_NAME_KR</th>
        <th>IM_USER_NAME_EN</th>
        <th>IM_USER_RANK</th>
        <th>IM_DEPT</th>
        <th>IM_USER_MAIL</th>
        <th>IM_PHONE_NUM</th>
        <th>IM_HIRE_DATE</th>
        <th>IM_UPDATE</th>
        <th>IM_USER_PW</th>
        <th>IM_FLAG</th>
        <th>IM_STATUS</th>
        <th>ERCO_YMD</th>
        <th>RTRM_YMD</th>
        <th>BIRYMD</th>
      </tr>
    </thead>	
    <tbody>
    	<c:forEach var="hrlist" items="${hrlisttest}">
	    	<tr>
	    		<td>${hrlist.im_key}</td>
	    		<td>${hrlist.im_user_id}</td>
	    		<td>${hrlist.im_user_name_kr}</td>
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