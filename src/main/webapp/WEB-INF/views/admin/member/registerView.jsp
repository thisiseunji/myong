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
	                <li><a href="/">Admin</a></li>
	                <li>Register</li>
	            </ol>
	            <h2>디자이너 등록</h2>
	        </div>
	    </section>
	    <!-- End Breadcrumbs -->
	    
 		<!-- 디자이너 등록 정보 입력 -->
 		<section id="member-register" class="member-register">
 			<div class="container mt-5 mb-5">
 				<form class="d-flex flex-column justify-content-md-center align-items-center" method="post" action="/*">
					<div class="form-floating mb-3 col-md-5">
					  <!-- is-invalid로 부적절 사용 가능  -->
					  <input type="text" class="form-control is-invalid" id="floatingInput" placeholder="designer01">
					  <label for="floatingInput">아이디</label>
					</div>
					<div class="form-floating mb-3 col-md-5">
					  <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
					  <label for="floatingPassword">비밀번호</label>
					</div>
					<div class="form-floating mb-3 col-md-5">
					  <input type="text" class="form-control" id="floatingPassword" placeholder="Password">
					  <label for="floatingPassword">이름</label>
					</div>
					<div class="form-floating mb-3 col-md-5">
					  <select class="form-select" id="floatingSelect" aria-label="Floating label select example">
					    <option value="원장">원장</option>
					    <option value="부원장">부원장</option>
					    <option value="실장">실장</option>
					    <option selected value="디자이너">디자이너</option>
					    <option value="신규디자이너">신규디자이너(2년 미만)</option>
					    <option value="인턴">인턴</option>
					  </select>
					  <label for="floatingSelect">직급</label>
					 </div>
					 <div class="form-floating mb-3 col-md-5">
						<input type="text" class="form-control" id="floatingPassword" placeholder="Password">
						<label for="floatingPassword">수수료비율</label>
					 </div>
					 <div class="col-5 mb-3 form-floating">
						<input type="date" class="form-control pt-3" id="date"/>
					 </div>

					 <div class="form-floating mb-3 col-md-5">
					 	<button type="submit" class="form-control btn btn-dark pt-3">등록하기</button>
					 </div>
 				</form>
 			</div>
 		</section>
    </main>
    <%@ include file="../../common/footer.jsp" %>
    
</body>
</html>