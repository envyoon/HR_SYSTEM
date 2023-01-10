<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EMP INSERT</title>
<!-- 제이쿼리 CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

<!-- CSS 링크 -->
<link rel="stylesheet" href="resources/lib/bootstrap.min.css" >
<link rel="stylesheet" href="resources/lib/jquery-ui.css" >
<link rel="stylesheet" href="resources/css/main.css" >


<script type="text/javascript">
	
	$(document).ready(function(){
		var status="${status}";
		if(status!=""){
			alert(status);
			
			// 등록 시 인사 리스트로 돌아가는 페이지.
			if(status=="등록되었습니다"){
				location.href="${path}/hrListTest";
			}
		}
		
		// 뒤로가기 버튼
		$("#goBack").click(function(){
			location.href="${path}/hrListTest";
		});
		
		// 등록하는 버튼
		$("#insbtn").click(function(){
			if(confirm("등록하시겠습니까?")){
				$("#insform").submit(); 
			}
		});
		
	});
	
		
</script>

</head>
<body>
<div class="jumbotron text-center">
  <h2>인사 정보 등록</h2>

</div>

	<div class="modal-body">
			<form id="insform" class="form" action="${path}/hrInsert"  method="post">
			
			<!-- IM_USER_ID, IM_USER_NAME_KR -->
		     <div class="row">
		      	<div class="col">
		       		<div>IM_USER_ID</div> <input type="text" class="form-control" placeholder="IM_USER_ID" name="imUserId">
		      	</div>
		      	<div class="col">
		        	<div>IM_USER_NAME_KR</div> <input type="text" class="form-control" placeholder="IM_USER_NAME_KR" name="imUserNameKr">
		      	</div>
		     </div>
		     
		     <!-- IM_USER_NAME_EN, IM_USER_RANK -->
		     <div class="row">
		      	<div class="col">
		       		<div>IM_USER_NAME_EN</div> <input type="text" class="form-control" placeholder="IM_USER_NAME_EN" name="imUserNameEn">
		      	</div>
		      	<div class="col">
		       		<div>IM_USER_RANK</div> <input type="text" class="form-control" placeholder="IM_USER_RANK" name="imUserRank">
		      	</div>
		     </div>
		     
		     <!-- IM_DEPT, IM_USER_MAIL -->
		     <div class="row">
		      	<div class="col">
		       		 <div>IM_DEPT</div> <input type="text" class="form-control" placeholder="IM_DEPT" name="imDept">
		      	</div>
		      	<div class="col">
		        	<div>IM_USER_MAIL</div> <input type="text" class="form-control" placeholder="IM_USER_MAIL" name="imUserMail">
		      	</div>
		     </div>
		     
		     <!-- IM_PHONE_NUM, IM_HIRE_DATE -->
		     <div class="row">
		      	<div class="col">
		       		<div>IM_PHONE_NUM</div> <input type="text" class="form-control" placeholder="IM_PHONE_NUM" name="imPhoneNum">
		      	</div>
		      	<div class="col">
		        	<div>IM_HIRE_DATE</div> <input type="text" class="form-control" placeholder="IM_HIRE_DATE" name="imHireDate">
		      	</div>
		     </div>
	    	 
	    	  <!-- IM_USER_PW, IM_FLAG -->
		     <div class="row">
		      	<div class="col">
		       		<div>IM_USER_PW</div> <input type="text" class="form-control" placeholder="IM_USER_PW" name="imUserPw">
		      	</div>
		      	<div class="col">
		        	<div>IM_FLAG</div> <input type="text" class="form-control" placeholder="IM_FLAG" name="imFlag">
		      	</div>
		     </div>
	    	 
	    	 
	    	  <!-- IM_STATUS, ERCO_YMD -->
		     <div class="row">
		      	<div class="col">
		       		<div>IM_STATUS</div> <input type="text" class="form-control" placeholder="IM_STATUS" name="imStatus">
		      	</div>
		      	<div class="col">
		        	<div>ERCO_YMD</div> <input type="text" class="form-control" placeholder="ERCO_YMD" name="ercoYmd">
		      	</div>
		     </div>
	    	 
	    	 
	    	  <!-- RTRM_YMD, BIRYMD -->
		     <div class="row">
		      	<div class="col">
		       		<div>RTRM_YMD</div> <input type="text" class="form-control" placeholder="RTRM_YMD" name="rtrmYmd">
		      	</div>
		      	<div class="col">
		        	<div>BIRYMD</div> <input type="text" class="form-control" placeholder="BIRYMD" name="birymd">
		      	</div>
		     </div>
	    	     	      
		    </form> 
	      </div>
	      
	      <div class="modal-footer">
	        <button type="button" id="insbtn" class="btn btn-primary">등록</button>
	        <button type="button" id="goBack" class="btn btn-primary">뒤로가기</button>
	      </div>
	    
</body>
</html>