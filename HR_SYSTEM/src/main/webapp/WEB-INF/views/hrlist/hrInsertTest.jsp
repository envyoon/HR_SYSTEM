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

<link rel="stylesheet" href="resources/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="resources/a00_com/jquery-ui.css" >
<style type="text/css">
	.input-group-text{width:100%;background-color:linen;color:black;font-weight:bolder;}
	.input-group-prepend{width:20%;}
</style>

<script type="text/javascript">
	
	$(document).ready(function(){
		var proc="${proc}";
		if(proc!=""){
			alert(proc);
			if(proc=="등록완료"){
				location.href="${path}/empList";
			}
		}			
		$("#goBack").click(function(){
			location.href="${path}/empList";
		});
		
		$("#insbtn").click(function(){
			if(confirm("등록하시겠습니까?")){
				$("#insfrom").submit(); 
			}
		});
		
	});
	
		
</script>

</head>
<body>
<div class="jumbotron text-center">
  <h2>회원정보 등록</h2>

</div>

	<div class="modal-body">
			<form id="insfrom" class="form" action="${path}/empInsert"  method="post">
			<!-- EMPNO, ENAME -->
		     <div class="row">
		      	<div class="col">
		       		<div>사원번호</div> <input type="text" class="form-control" placeholder="EMPNO" name="empno">
		      	</div>
		      	<div class="col">
		        	<div>사원이름</div> <input type="text" class="form-control" placeholder="ENAME" name="ename">
		      	</div>
		     </div>
		     
		     <!-- JOB, MGR -->
		     <div class="row">
		      	<div class="col">
		       		<div>직종</div> <input type="text" class="form-control" placeholder="JOB" name="job">
		      	</div>
		      	<div class="col">
		       		<div>MGR</div> <input type="text" class="form-control" placeholder="MGR" name="mgr">
		      	</div>
		     </div>
		     
		     <!-- HIREDATE, SAL -->
		     <div class="row">
		      	<div class="col">
		       		 <div>입사날짜</div> <input type="date" class="form-control" placeholder="HIREDATE" name="hiredateS">
		      	</div>
		      	<div class="col">
		        	<div>SAL</div> <input type="text" class="form-control" placeholder="SAL" name="sal">
		      	</div>
		     </div>
		     
		     <!-- COMM, DEPTNO -->
		     <div class="row">
		      	<div class="col">
		       		<div>COMM</div> <input type="text" class="form-control" placeholder="COMM" name="comm">
		      	</div>
		      	<div class="col">
		        	<div>부서번호</div> <input type="text" class="form-control" placeholder="DEPTNO" name="deptno">
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