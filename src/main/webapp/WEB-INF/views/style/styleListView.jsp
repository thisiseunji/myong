<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>스타일 > 목록</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

</head>

<body>

  <%@ include file="../common/header.jsp" %>

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <ol>
          <li><a href="/">홈</a></li>
          <li>서비스</li>
        </ol>
        <h2>서비스 목록</h2>

      </div>
    </section><!-- End Breadcrumbs -->
    
	<!-- ======= Portfolio Section ======= -->
    <section id="portfolio" class="portfolio">
      <div class="container">
    	<section id="category" class="category container mt-5">
			<div class="row">
				<div class="col-8">
			  		<div class="input-group ">
			  		  <span class="input-group-text">대분류</span>
					  <select class="form-select" id="division1" name="division1" aria-label="Example select with button addon">
					    <option selected>전체</option>
					    <option value="헤어">헤어</option>
					    <option value="메이크업">메이크업</option>
					    <option value="네일">네일</option>
					  </select>
					  <span class="input-group-text">소분류</span>
					  <select class="form-select" id="division2" name="division2" aria-label="Example select with button addon">
					    <option selected>전체</option>
					    <option value="1">숏</option>
					    <option value="2">미디움</option>
					    <option value="3">롱</option>
					    <option value="4">컬러</option>
					    <option value="5">펌</option>
					    <option value="6">드라이</option>
					  </select>
					  <button class="btn btn-outline-secondary" type="button">적용</button>
					</div>
				</div>
				<div class="col-4">
			  		<div class="input-group ">
					  <select class="form-select" id="orderBy" aria-label="Example select with button addon">
					    <option selected>예약 많은 순</option>
					    <option value="1">후기 많은 순</option>
					    <option value="2">가격 낮은 순</option>
					    <option value="3">가격 높은 순</option>
					  </select>
					  <button class="btn btn-outline-secondary" type="button">적용</button>
					</div>
				</div>
			</div>
		</section>

        <div class="row portfolio-container">

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <div class="portfolio-wrap">
              <img src="<%= request.getContextPath()%>/resources/img/portfolio/portfolio-1.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4>App 1</h4>
                <p>App</p>
                <div class="portfolio-links">
                  <a href="<%= request.getContextPath()%>/resources/img/portfolio/portfolio-1.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="App 1"><i class="bx bx-plus"></i></a>
                  <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <div class="portfolio-wrap">
              <img src="<%= request.getContextPath()%>/resources/img/portfolio/portfolio-2.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4>Web 3</h4>
                <p>Web</p>
                <div class="portfolio-links">
                  <a href="<%= request.getContextPath()%>/resources/img/portfolio/portfolio-2.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Web 3"><i class="bx bx-plus"></i></a>
                  <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <div class="portfolio-wrap">
              <img src="<%= request.getContextPath()%>/resources/img/portfolio/portfolio-3.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4>App 2</h4>
                <p>App</p>
                <div class="portfolio-links">
                  <a href="<%= request.getContextPath()%>/resources/img/portfolio/portfolio-3.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="App 2"><i class="bx bx-plus"></i></a>
                  <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <div class="portfolio-wrap">
              <img src="<%= request.getContextPath()%>/resources/img/portfolio/portfolio-4.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4>Card 2</h4>
                <p>Card</p>
                <div class="portfolio-links">
                  <a href="<%= request.getContextPath()%>/resources/img/portfolio/portfolio-4.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Card 2"><i class="bx bx-plus"></i></a>
                  <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <div class="portfolio-wrap">
              <img src="<%= request.getContextPath()%>/resources/img/portfolio/portfolio-5.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4>Web 2</h4>
                <p>Web</p>
                <div class="portfolio-links">
                  <a href="<%= request.getContextPath()%>/resources/img/portfolio/portfolio-5.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Web 2"><i class="bx bx-plus"></i></a>
                  <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <div class="portfolio-wrap">
              <img src="<%= request.getContextPath()%>/resources/img/portfolio/portfolio-6.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4>App 3</h4>
                <p>App</p>
                <div class="portfolio-links">
                  <a href="<%= request.getContextPath()%>/resources/img/portfolio/portfolio-6.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="App 3"><i class="bx bx-plus"></i></a>
                  <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <div class="portfolio-wrap">
              <img src="<%= request.getContextPath()%>/resources/img/portfolio/portfolio-7.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4>Card 1</h4>
                <p>Card</p>
                <div class="portfolio-links">
                  <a href="<%= request.getContextPath()%>/resources/img/portfolio/portfolio-7.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Card 1"><i class="bx bx-plus"></i></a>
                  <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <div class="portfolio-wrap">
              <img src="<%= request.getContextPath()%>/resources/img/portfolio/portfolio-8.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4>Card 3</h4>
                <p>Card</p>
                <div class="portfolio-links">
                  <a href="<%= request.getContextPath()%>/resources/img/portfolio/portfolio-8.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Card 3"><i class="bx bx-plus"></i></a>
                  <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <div class="portfolio-wrap">
              <img src="<%= request.getContextPath()%>/resources/img/portfolio/portfolio-9.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4>Web 3</h4>
                <p>Web</p>
                <div class="portfolio-links">
                  <a href="<%= request.getContextPath()%>/resources/img/portfolio/portfolio-9.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Web 3"><i class="bx bx-plus"></i></a>
                  <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section><!-- End Portfolio Section -->
    
    <!-- ======= Clients Section ======= -->
    <section id="clients" class="clients">
      <div class="container">

        <div class="section-title">
          <h2>Clients</h2>
          <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
        </div>

        <div class="clients-slider swiper">
          <div class="swiper-wrapper align-items-center">
            <div class="swiper-slide"><img src="../resources/img/clients/client-1.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="../resources/img/clients/client-2.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="../resources/img/clients/client-3.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="../resources/img/clients/client-4.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="../resources/img/clients/client-5.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="../resources/img/clients/client-6.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="../resources/img/clients/client-7.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="../resources/img/clients/client-8.png" class="img-fluid" alt=""></div>
          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section><!-- End Clients Section -->

  </main><!-- End #main -->

  <%@ include file="../common/footer.jsp" %>
  
  <script>
	$(function() {
		//- 검색 버튼을 눌렀을 때
		//- 페이지 맨 처음 로드 될 때 스타일 list get
		// division2에 대한 검색
		$('#division1').change(function() {
			let division1 = $(this).val();
			selectDivision2ListAsDivision1(division1);
		});

		// section category의 버튼이 눌리면, 해당 조건에 대한 스타일 list 리턴 (페이지네이션? 필요함? 많으면 필요할 수 있지?)
		// 데이터는 category의 div 중, class가 input group인 것에서 selected 된 것 속성 근데 이거 그냥 리스트로 못 넘기나?
		$('#category btn').click(function() {
			
		});
	});	
  
  
  
	function selectDivision2ListAsDivision1(division1) {
  		let tmp = '<option selected>전체</option>';
  		if (division1 == '전체') {
  			$('select#division2').html(tmp);
  		} else {
 	  		$.ajax({
 	  			url : "division",
 	  			data : {
 	  				division1 : division1
 	  			},
 	  			// String list가 올 것임.
 	  			success : function(list) {
 	  				if(list.length != 0) {
 	  					for (let i=0 ; i < list.length ; i++) {
 	  						tmp += '<option>'+ list[i] +'</option>';
 	  					}
 	  				}
 	  				$('select#division2').html(tmp);
 	  			},
 	  			error : function() {
 	  				console.log('division2 호출 실패');
 	  			}
 	  		});
  		}
  	}
	

	
	</script>


</body>

</html>