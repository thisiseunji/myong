<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>디자이너 > 상세</title>
<style type="text/css">

</style>
</head>
<body>
  <%@ include file="../common/header.jsp" %>
  
  
  
	<main id="main">
		<!-- ======= Breadcrumbs ======= -->
	    <section id="breadcrumbs" class="breadcrumbs">
	      <div class="container">
	
	        <ol>
	          <li><a href="/">홈</a></li>
	          <li>디자이너</li>
	        </ol>
	        <h2>디자이너 정보</h2>
	        
	      </div>
	    </section><!-- End Breadcrumbs -->
	    
	    <section id="designerinfo">
	    	
	   		<div class="container mt-5">
		   		<div class="row row-cols-2">
		   			<img class="col rounded img-fluid" src="<%= request.getContextPath() %>${designer.getProfileImg()}" style="max-width:500px;">
		   		
		   			<div class="col justify-content-end align-items-center">
		   				<span class="fs-3">${designer.getNickname()}</span>
		   				<div>${designer.getPosition()}</div>
		   				<button class="btn btn-primary" id="startChat">이 디자이너와 스타일 상담하기</button>
		   			</div>
		   		
		   		</div>
	   			
	   		</div>
	    </section>
	    
	    <!-- 여기부터 댓글 -->
	    <div class="container mb-5">
		<ul class="list-group list-group-flush">
			<li class="list-group-item">
				<a href="blog-single.html" class="d-block">
					<div class="row row-cols-3 g-0 align-items-center">
						<div class="col-2 d-flex align-items-center">
							<img class="rounded img-fluid" src="../resources/img/blog/blog-recent-1.jpg" alt="" style="max-width:120px;">
						</div>
						<div class="d-flex flex-column col-3">
							<div class="rating-stars">
								<span class="service-name">서비스</span>
								<label for="star5" class="star ms-1">&#9733;</label>
								<label for="star4" class="star">&#9733;</label>
								<label for="star3" class="star">&#9733;</label>
								<label for="star2" class="star">&#9733;</label>
								<label for="star1" class="star">&#9733;</label>
							</div>
							<div class="rating-stars">
								<span class="service-name">스타일</span>
								<label for="star5" class="star ms-1">&#9733;</label>
								<label for="star4" class="star">&#9733;</label>
								<label for="star3" class="star">&#9733;</label>
								<label for="star2" class="star">&#9733;</label>
								<label for="star1" class="star">&#9733;</label>
							</div>
							<div class="rating-stars">
								<span class="service-name me-3">가격</span>
								<label for="star5" class="star ms-1">&#9733;</label>
								<label for="star4" class="star">&#9733;</label>
								<label for="star3" class="star">&#9733;</label>
								<label for="star2" class="star">&#9733;</label>
								<label for="star1" class="star">&#9733;</label>
							</div>
						</div>
						<div class="col-7">
							<h5 class="black text-truncate">선생님 너무 친절하세요. 머리도 너무 마음에 들고요. 다음달에 또 만나요~!!!!</h5>
							<time datetime="2020-01-01" class="float-end">Jan 1, 2020</time>
							<!-- 이게 누르면 모달이 뜨도록 그리고 이게 리스트여야하는뎅  -->
						</div>
					</div>
				</a>
			</li>

		  <li class="list-group-item">
	  	 	<a href="blog-single.html" class="d-block">
				<div class="row row-cols-3 g-0 align-items-center">
					<div class="col-2 d-flex align-items-center">
						<img class="rounded img-fluid" src="../resources/img/blog/blog-recent-1.jpg" alt="" style="max-width:120px;">
					</div>
					<div class="d-flex flex-column col-3">
						<div class="rating-stars">
							<span class="service-name">서비스</span>
							<label for="star5" class="star ms-1">&#9733;</label>
							<label for="star4" class="star">&#9733;</label>
							<label for="star3" class="star">&#9733;</label>
							<label for="star2" class="star">&#9733;</label>
							<label for="star1" class="star">&#9733;</label>
						</div>
						<div class="rating-stars">
							<span class="service-name">스타일</span>
							<label for="star5" class="star ms-1">&#9733;</label>
							<label for="star4" class="star">&#9733;</label>
							<label for="star3" class="star">&#9733;</label>
							<label for="star2" class="star">&#9733;</label>
							<label for="star1" class="star">&#9733;</label>
						</div>
						<div class="rating-stars">
							<span class="service-name me-3">가격</span>
							<label for="star5" class="star ms-1">&#9733;</label>
							<label for="star4" class="star">&#9733;</label>
							<label for="star3" class="star">&#9733;</label>
							<label for="star2" class="star">&#9733;</label>
							<label for="star1" class="star">&#9733;</label>
						</div>
					</div>
					<div class="col-7">
						<h5 class="black text-truncate">선생님 너무 친절하세요. 머리도 너무 마음에 들고요. 다음달에 또 만나요~!!!!</h5>
						<time datetime="2020-01-01" class="float-end">Jan 1, 2020</time>
						<!-- 이게 누르면 모달이 뜨도록 그리고 이게 리스트여야하는뎅  -->
					</div>
				</div>
			</a>
		  </li>
		  <li class="list-group-item">
		  	<a href="blog-single.html" class="d-block">
				<div class="row row-cols-3 g-0 align-items-center">
					<div class="col-2 d-flex align-items-center">
						<img class="rounded img-fluid" src="../resources/img/blog/blog-recent-1.jpg" alt="" style="max-width:120px;">
					</div>
					<div class="d-flex flex-column col-3">
						<div class="rating-stars">
							<span class="service-name">서비스</span>
							<label for="star5" class="star ms-1">&#9733;</label>
							<label for="star4" class="star">&#9733;</label>
							<label for="star3" class="star">&#9733;</label>
							<label for="star2" class="star">&#9733;</label>
							<label for="star1" class="star">&#9733;</label>
						</div>
						<div class="rating-stars">
							<span class="service-name">스타일</span>
							<label for="star5" class="star ms-1">&#9733;</label>
							<label for="star4" class="star">&#9733;</label>
							<label for="star3" class="star">&#9733;</label>
							<label for="star2" class="star">&#9733;</label>
							<label for="star1" class="star">&#9733;</label>
						</div>
						<div class="rating-stars">
							<span class="service-name me-3">가격</span>
							<label for="star5" class="star ms-1">&#9733;</label>
							<label for="star4" class="star">&#9733;</label>
							<label for="star3" class="star">&#9733;</label>
							<label for="star2" class="star">&#9733;</label>
							<label for="star1" class="star">&#9733;</label>
						</div>
					</div>
					<div class="col-7">
						<h5 class="black text-truncate">선생님 너무 친절하세요. 머리도 너무 마음에 들고요. 다음달에 또 만나요~!!!!</h5>
						<time datetime="2020-01-01" class="float-end">Jan 1, 2020</time>
						<!-- 이게 누르면 모달이 뜨도록 그리고 이게 리스트여야하는뎅  -->
					</div>
				</div>
			</a>
		  </li>
		</ul>
	   </div>
	</main>

  <%@ include file="../common/footer.jsp" %>
  
  <script type="text/javascript">
  	$(function() {
  		// customer_id / designer_id 임시고정
  		let cId = 1;
  		let dId = 2;
  		
  		
  	});
  </script>
</body>
</html>