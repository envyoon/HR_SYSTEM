<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인사 정보 확인</title>

<!-- 제이쿼리 CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

<!-- CSS 링크 -->
<link rel="stylesheet" href="resources/lib/bootstrap.min.css" >
<link rel="stylesheet" href="resources/lib/jquery-ui.css" >
<link rel="stylesheet" href="resources/css/main.css" >


<script>
	
	
	// status 값에 따른 삭제 / 수정 처리 부분.
	$(document).ready(function(){
		var status="${status}";
		if(status!=""){
			alert(status);
			// 삭제 시 alert 출력 후 리스트로 이동
			if(status=="삭제되었습니다"){
				location.href="${path}/hrListTest";
			}
			
			// 수정 시 alert 출력 후 리스트로 이동
			if(status=="수정되었습니다"){
				location.href="${path}/hrListTest";
			}
		}
		
		// 뒤로가기 버튼
		$("#goBack").click(function(){
			location.href="${path}/hrListTest";
		});
		
		// 수정 버튼
		$("#uptBtn").click(function(){
			if(confirm("수정하시겠습니까?")){
				$("form").attr("action", "${path}/uptHr");
				$("form").submit();
			}
		}); 
		
		// 삭제 버튼
		$("#delBtn").click(function(){
			if(confirm("삭제하시겠습니까?")){
				location.href="${path}/delHr?imKey="+$("[name=imKey]").val();
			}
		});
		
		
	});
	
</script>


</head>
<body>

<div class="jumbotron text-center">
  <h2>인사정보상세</h2>

</div>

<div class="container">

	<!-- 지정 데이터를 보내기 위한 히든 처리 -->
	<input type="hidden" name="imKey" value=${HrListTestVO.imKey}>
	
	
	<form method="post">
	   <table class="table table-hover table-striped">
	   
	    <thead>
		    <tr class="table-success text-center">
		      <th>아이디</th><td><input type="text" name="imUserId" value=${HrListTestVO.imUserId}></td>
		    </tr>
		    
		    <tr class="table text-center">
		      <th>이름(한글)</th><td><input type="text" name="imUserNameKr" value=${HrListTestVO.imUserNameKr}></td>
		    </tr>
		    
		    <tr class="table-success text-center">
		      <th>이름(영문)</th><td><input type="text" name="imUserNameEn" value=${HrListTestVO.imUserNameEn}></td>
		    </tr>
		    
		    <tr class="table text-center">
		      <th>직급</th><td><input type="text" name="imUserRank" value=${HrListTestVO.imUserRank}></td>
		    </tr>
		    <tr class="table-success text-center">
		      <th>부서</th><td><input type="text" name="imDept" value=${HrListTestVO.imDept}></td>
		    </tr>
		    
		    <tr class="table text-center">
		      <th>이메일</th><td><input type="text" name="imUserMail" value=${HrListTestVO.imUserMail}></td>
		    </tr>
		    
		    <tr class="table-success text-center">
		      <th>핸드폰번호</th><td><input type="text" name="imPhoneNum" value=${HrListTestVO.imPhoneNum}></td>
		    </tr>
		    
		    <tr class="table text-center">
		      <th>입사날짜</th><td><input type="text" name="imHireDate" value=${HrListTestVO.imHireDate}></td>
		    </tr>
		    
		    <tr class="table-success text-center">
		      <th>UPDATE</th><td><input type="text" name="imUpdate" value=${HrListTestVO.imUpdate}></td>
		    </tr>
		    
		    <tr class="table text-center">
		      <th>PASSWORD</th><td><input type="password" name="imUserPw" value=${HrListTestVO.imUserPw}></td>
		    </tr>
		    
		    <tr class="table-success text-center">
		      <th>FLAG</th><td><input type="text" name="imFlag" value=${HrListTestVO.imFlag}></td>
		    </tr>
		    
		    <tr class="table text-center">
		      <th>STATUS</th><td><input type="text" name="imStatus" value=${HrListTestVO.imStatus}></td>
		    </tr>
		    
		    
		    <tr class="table-success text-center">
		      <th>ERCO_YMD</th><td><input type="text" name="ercoYmd" value=${HrListTestVO.ercoYmd}></td>
		    </tr>  
		      
		    <tr class="table text-center">
		      <th>RTRM_YMD</th><td><input type="text" name="rtrmYmd" value=${HrListTestVO.rtrmYmd}></td>
		    </tr>
		    
		    <tr class="table-success text-center">
		      <th>BIRYMD</th><td><input type="text" name="birymd" value=${HrListTestVO.birymd}></td>
		    </tr>  
		       			
		</table>    
	    
	    
	 	<!-- 뒤로가기, 수정하기, 삭제하기 버튼 -->
	    <div style="text-align:left;">
			<input type="button" class="btn btn-info" value="뒤로가기" id="goBack"/>
			<input type="button" class="btn btn-info" value="수정하기" id="uptBtn"/>		
			<input type="button" class="btn btn-info" value="삭제하기" id="delBtn"/>		
		</div>
		
	</form>
   
</div>

    
</body>
</html>