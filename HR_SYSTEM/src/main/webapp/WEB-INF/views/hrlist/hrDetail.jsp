<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보확인</title>

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

<script>
	
	
	$(document).ready(function(){
		var proc="${proc}";
		if(proc!=""){
			alert(proc);
			if(proc=="삭제되었습니다"){
				location.href="${path}/empList";
			}
			if(proc=="수정완료"){
				location.href="${path}/empList";
			}
		}
		
		$("#goBack").click(function(){
			location.href="${path}/empList";
		});
		
		
		$("#uptBtn").click(function(){
			if(confirm("수정하시겠습니까?")){
				$("form").attr("action","${path}/uptEmp");
				$("form").submit();
			}
		}); 
		
		$("#delBtn").click(function(){
			if(confirm("삭제하시겠습니까?")){
				location.href="${path}/delEmp.do?empno="+$("[name=empno]").val();
			}
		});
				
		$("#goBack").click(function(){
			location.href="${path}/empList";
		});
		
	});
	
</script>


</head>
<body>

<div class="jumbotron text-center">
  <h2>사원정보상세</h2>

</div>

<div class="container">

	<form method="post">
	   <table class="table table-hover table-striped">
	   
	    <thead>
	      <tr class="table-success text-center">
	        <th></th> <td><input type="hidden" name="empno" value=${emp.empno}></td>
	      </tr>
	      <tr class="table-success text-center">
	        <th>사원명</th> <td><input type="text" name="ename" value=${emp.ename}></td>
	      </tr>
		  <tr class="table-success text-center">
	        <th>직책명</th> <td><input type="text" name="job" value=${emp.job}></td>
	      </tr>
	      <tr class="table-success text-center">
	        <th>MGR</th> <td><input type="text" name="mgr" value=${emp.mgr}></td>
	      </tr>
	      <tr class="table-success text-center">
	        <th>입사날짜</th> <td><input type="date" name="hiredateS" value='<fmt:formatDate value="${emp.hiredate}" pattern="yyyy-MM-dd"/>'/></td>
	      </tr>
	      <tr class="table-success text-center">
	        <th>급여</th> <td><input type="text" name="sal" value=${emp.sal}></td>
	      </tr>
	      <tr class="table-success text-center">
	        <th>COMM</th> <td><input type="text" name="comm" value=${emp.comm}></td>
	      </tr>
	      <tr class="table-success text-center">
	        <th>부서번호</th> <td><input type="text" name="deptno" value=${emp.deptno}></td>
	      </tr>
	    </thead>	
		</table>    
	    
	 
	    <div style="text-align:left;">
			<input type="button" class="btn btn-info" value="뒤로가기" id="goBack"/>
			<input type="button" class="btn btn-info" value="수정하기" id="uptBtn"/>		
			<input type="button" class="btn btn-info" value="삭제하기" id="delBtn"/>		
		</div>
		
	</form>
   
</div>

    
</body>
</html>