<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>디자이너 등록</title>
</head>
<body>
	<jsp:include page="../../admin/common/header.jsp" />
	
	<main id="main">
	    <!-- ======= Breadcrumbs ======= -->
	    <section id="breadcrumbs" class="breadcrumbs">
	        <div class="container">
	            <ol>
	                <li><a href="/">관리자 홈</a></li>
	                <li>디자이너</li>
	            </ol>
	            <h2>디자이너 등록</h2>
	        </div>
	    </section>
	    <!-- End Breadcrumbs -->
	    
 		<!-- 디자이너 등록 정보 입력 -->
 		<section id="member-register" class="member-register">
 			<div class="container mt-5 mb-5">
 				<form class="d-flex flex-column justify-content-md-center align-items-center" id="enrollForm" method="post" action="register">
					<div class="form-floating mb-3 col-5">
					  <!-- is-invalid로 부적절 사용 가능  -->
					  <input type="text" class="form-control" id="memberId" placeholder="designer01" name="memberId">
					  <label for="memberId">아이디(소문자, 숫자만 입력 가능)</label>
					  <div id="checkResult" style="font-size : 0.8em; display : none"></div>					
					</div>
					<div class="form-floating mb-3 col-5">
					  <input type="password" class="form-control" id="memberPwd" placeholder="Password" name="memberPwd">
					  <label for="memberPwd">비밀번호</label>
					</div>
					<div class="form-floating mb-3 col-5">
					  <input type="text" class="form-control" id="memberName" placeholder="name" name="memberName">
					  <label for="memberName">이름</label>
					</div>
					<div class="form-floating mb-3 col-5">
					  <select class="form-select" id="position" aria-label="Floating label select example" name="position">
					    <option value="인턴">인턴</option>
					    <option value="준디자이너">준디자이너</option>
					    <option selected value="디자이너">디자이너</option>
					    <option value="수석디자이너">수석디자이너</option>
					  </select>
					  <label for="position">직급</label>
					 </div>
					 <div class="form-floating mb-3 col-5">
					  <select class="form-select" id="title" aria-label="Floating label select example" name="title"> 
					  	<option selected value="-">-</option>
					    <option value="매니저">매니저</option>
					    <option value="실장">실장</option>
					    <option value="점장">점장</option>
					    <option value="인턴">이사</option>
					  </select>
					  <label for="title">직책</label>
					 </div>
					 <div class="form-floating mb-3 col-5">
						<input type="number" class="form-control" id="chargeRate" placeholder="10" name="chargeRate" value="0" min="0"/>
						<label for="chargeRate">수수료비율</label>
					 </div>
					 <div class="form-floating col-5 mb-3">
						<input type="date" class="form-control pt-3" id="effectiveDate" name="effectiveDate"/>
						<label for="effectiveDate">입사일</lable>
					 </div>
					 <div class="form-floating mb-3 col-5">
					 	<button type="submit" class="form-control btn btn-secondary pt-3" disabled="true">등록하기</button>
					 </div>
 				</form>
 			</div>
 		</section>
    </main>
    <script>
    	$(function() {
    		let isIdOk = false;
    		
    		$('#enrollForm input').keyup(function() {
    		    var allFilled = true;

    		    $('#enrollForm input').each(function() {
    		      if ($(this).val() === '') {
    		        allFilled = false;
    		        return false;
    		      }
    		    });
				
    		    // 모든 입력값이 입력되지 않으면 버튼 비활성화
    		    if (allFilled && isIdOk) {
    		    	$("#enrollForm button[type=submit]").attr("disabled", false).addClass("btn-dark").removeClass("btn-secondary");
    		    } else {
    		    	$("#enrollForm button[type=submit]").attr("disabled", true).addClass("btn-secondary").removeClass("btn-dark");
    		    }
    		  });

    		
    		// 키 입력시마다 아이디 중복 및 유효성 검사 + 유효하지 않으면 버튼 비활성화
    		const $idInput = $("#enrollForm input[name=memberId]");
			
			$idInput.keyup(function() {
   				if($idInput.val().length >= 1) {
   					$.ajax({
   	       				url : "register/checkid",
   	   					data : {checkId : $idInput.val()},
   	   					type : "get",
   	       				success : function(result) {
   	       					console.log("result : " + result);
   	       					if (result==="유효") {
   	       						$idInput.removeClass("is-invalid");
   	       						$("#checkResult").hide();
   	       						isIdOk = true;
   	       					} else {
   	       						$idInput.addClass("is-invalid");
   	       						if (result==="문자") {
   	   	       						$("#checkResult").text("유효하지 않은 문자가 존재합니다.");
   	       						} else { // result.equals("중복")
   	       							$("#checkResult").text("중복된 아이디가 존재합니다.");
   	       						}
   	       						
	       						$("#checkResult").css("color", "red").show();
   	   							isIdOk = false;
   	       					}
   	       				},
   	       				
   	    				error : function(result, error) {
   	    					console.log("ajax요청 실패");
   	    					console.log("code : " + result.status + "\n");
   	    					console.log("message : " + result.responseText + "\n");
   	    					console.log("error : " + error);
   	    				}
   	       			});
   				} else {
   					$("#checkResult").hide();
   				}
   			});

    	});
    </script>
    
    
    <jsp:include page="../../common/footer.jsp" />
    
</body>
</html>