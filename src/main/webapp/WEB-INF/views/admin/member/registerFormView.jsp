<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>디자이너 등록</title>
</head>
<body>
	<%@ include file="../../common/header.jsp" %>
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
 				<!-- 왜 이 액션이 admin/register로 바로 가지? -->
 				<form class="d-flex flex-column justify-content-md-center align-items-center" method="post" action="register">
					<div class="form-floating mb-3 col-5">
					  <!-- is-invalid로 부적절 사용 가능  -->
					  <input type="text" class="form-control is-invalid" id="memberId" placeholder="designer01" name="memberId">
					  <label for="memberId">아이디</label>
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
					  	<option selected value="-">-</option>.
					    <option value="매니저">매니저</option>
					    <option value="실장">실장</option>
					    <option value="점장">점장</option>
					    <option value="인턴">이사</option>
					  </select>
					  <label for="title">직책</label>
					 </div>
					 <div class="form-floating mb-3 col-5">
						<input type="text" class="form-control" id="chargeRate" placeholder="chargeRate" name="chargeRate"/>
						<label for="chargeRate">수수료비율</label>
					 </div>
					 <div class="form-floating col-5 mb-3">
						<input type="date" class="form-control pt-3" id="effectiveDate" name="effectiveDates"/>
						<label for="effectiveDate">입사일</lable>
					 </div>
					 <div class="form-floating mb-3 col-5">
					 	<button type="submit" class="form-control btn btn-dark pt-3">등록하기</button>
					 </div>
 				</form>
 			</div>
 		</section>
    </main>
    <%@ include file="../../common/footer.jsp" %>
    
</body>
</html>