<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- jstl 선언 구문 (taglib 지시어) 는 매 페이지마다 기술해야 함, include 로 가져오는게 없음 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약</title>

<style>
.datepicker {
  background-color: #000 !important;
  color: #fff !important;
  border: none;
  padding: 10px !important;
}


.datepicker-switch:hover {
  background-color: inherit !important;
  opacity: 1;
}

.cell {
  border: 1px solid #BDBDBD;
  border-radius: 5px;
  margin: 2px;
  cursor: pointer;
}

.cell:hover {
  /* border: 1px solid #3D5AFE;*/
  border: 1px solid black;
}

.cell.select {
  background-color: black;
  color: #fff;
}

span.fa-calendar {
  color: black;
  font-size: 20px;
  padding-top: 7px;
  cursor: pointer;
}

div.member:hover, div.menu:hover {
	scale : 0.985;
}
div.member.select, div.menu.select {
	border-radius : 5px;
	border : 2px solid black;
	scale : 0.985;
}

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
          <li>예약</li>
        </ol>
        <h2>예약</h2>

      </div>
    </section><!-- End Breadcrumbs -->
  
	<form method="post" action="<%= request.getContextPath() %>/appointment">
  	<section id="portfolio-details" class="portfolio-details">
  		<div class="container">
  			<!-- 탭 메뉴 -->
			<ul class="nav nav-tabs nav-fill" id="myTab" role="tablist">
			  <li class="nav-item" role="presentation">
			    <button class="nav-link active" id="customer-tab" data-bs-toggle="tab" data-bs-target="#customer" type="button" role="tab" aria-selected="true">고객정보 입력</button>
			  </li>
			  <li class="nav-item" role="presentation">
			    <button class="nav-link" id="schedule-tab" data-bs-toggle="tab" data-bs-target="#schedule" type="button" role="tab" aria-selected="false">일정 및 디자이너 선택</button>
			  </li>
			  <li class="nav-item" role="presentation">
			    <button class="nav-link" id="style-tab" data-bs-toggle="tab" data-bs-target="#style" type="button" role="tab" aria-selected="false">스타일 선택</button>
			  </li>
			  <li class="nav-item" role="presentation">
			    <button class="nav-link" id="appointment-tab" data-bs-toggle="tab" data-bs-target="#appointment" type="button" role="tab" aria-selected="false">예약내역 확인</button>
			  </li>
			</ul>
			
			<div class="tab-content d-flex justify-content-center" id="myTabContent">
			  <div class="tab-pane fade show active" id="customer" role="tabpanel" aria-labelledby="customer-tab">
				<!-- ======= Sign In Section ======= -->
               	<div class="mt-5"> 
                  	<input class="form-control mb-2" type="text" placeholder="휴대폰 번호를 입력하세요." name="phone"/>
                	<input class="form-control mb-3" type="text" placeholder="성함을 입력하세요." name="name"/>
                	<section id="move1">
	                	<button class="nav-link btn float-end pe-1" id="schedule-tab" data-bs-target="#schedule" data-bs-toggle="tab" role="tab" type="button" onclick="changeTab('schedule')">
						 	다음  <i class="bi bi-arrow-right"></i>
						</button>
                	</section>

				</div>
	          </div>
			  
			  <!-- 디자이너 및 일정 선택 부분 -->
			  <div class="tab-pane fade" id="schedule" role="tabpanel" aria-labelledby="schedule-tab">
				<section id="calender" class="calender">
					<div class="container mt-5 row">
						<div class='input-group' id='datetimepicker1' data-td-target-input='nearest' data-td-target-toggle='nearest'>
						   <input id='datetimepicker1Input' type='text' class='form-control' data-td-target='#datetimepicker1'/>
						   <span class='fa fa-solid fa-calendar input-group-text' data-td-target='#datetimepicker1' data-td-toggle='datetimepicker'></span>
					    </div>
				          <!--
				           	예약 구현시 생각한 것 메모
				           	1. 선택된 시간 값은 input hidden 태그로 넘긴다.
				           	2. (input #datetimepicker1Input의 값이 변할 때 마다) 해당 날짜의 예약 내역에 대해 검색,
				           	아! 시간이 disabled 될 필요는 없네! 디자이너를 검색하면 되네. 만약 디자이너가 0이면 그 시간은 disabled인것. 
				           	디자이너 상세페이지에서는 예약 가능 시간을 나타내면 되구, 맞지? 예약하기로 넘어가는게 아니고 ㅇㅇ
				           	
				           	일단 여기서는 시간 -> 디자이너 순이므로 예약 가능한 디자이너가 없을 경우만 생각해서 할 대비할 것~!
				           -->
				          <div class="card-body p-3 p-sm-5" id="timeSelector">
				            <div class="row text-center mx-0">
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">10:00 AM</div></div>
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">10:30 AM</div></div>
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">11:00 AM</div></div>
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">11:30 AM</div></div>
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">12:00 PM</div></div>
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">12:30 PM</div></div>
				            </div>
				            <div class="row text-center mx-0">
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">1:00 PM</div></div>
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">1:30 PM</div></div>
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">2:00 PM</div></div>
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">2:30 PM</div></div>
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">3:00 PM</div></div>
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">3:30 PM</div></div>
				            </div>
				            <div class="row text-center mx-0">
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">4:00 PM</div></div>
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">4:30 PM</div></div>
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">5:00 PM</div></div>
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">5:30 PM</div></div>
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">6:00 PM</div></div>
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">6:30 PM</div></div>
				            </div>
				            <div class="row text-center mx-0">
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">7:00 PM</div></div>
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">7:30 PM</div></div>
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">8:00 PM</div></div>
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">8:30 PM</div></div>
				            </div>
				          </div>
					</div>
				</section>
				<section id="team" class="team">
					<div class="container mt-3">
						<div class="row container-fluid">
							<!-- 선택가능한 디자이너 목록 출력 -->
							<div class="col d-flex justify-content-center">예약 일정을 선택해주세요.</div>
          				</div>
					</div>
				</section>
				<section id="move2">
					<button class="nav-link btn float-start pe-1" id="customer-tab" data-bs-target="#customer" data-bs-toggle="tab" role="tab" type="button" onclick="changeTab('customer')">
					 	<i class="bi bi-arrow-left"></i>  이전
					</button>
				   <button class="nav-link btn float-end pe-1" id="style-tab" data-bs-target="#style" data-bs-toggle="tab" role="tab" type="button" onclick="changeTab('style')">
					 	다음  <i class="bi bi-arrow-right"></i>
					</button>
				</section>  
			  </div>
			  
			  <!-- 스타일 선택 부분 -->
			  <div class="tab-pane fade container" id="style" role="tabpanel" aria-labelledby="style-tab">
			  	<!-- 카테고리 선택 부분 -->
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
							    <option selected value="예약 많은 순">예약 많은 순</option>
							    <option value="후기 많은 순">후기 많은 순</option>
							    <option value="가격 낮은 순">가격 낮은 순</option>
							    <option value="가격 높은 순">가격 높은 순</option>
							  </select>
							  <button class="btn btn-outline-secondary" type="button">적용</button>
							</div>
						</div>
					</div>
				</section>
				<!-- 페이지 로딩시 전체 스타일의 1장이 넘어와야함. -->
				<section class="style">
					<div class="container">
						<div class="d-flex justify-content-center">
							<div class="ms-2 gap-4 justify-content-start row align-items-start"></div>
						</div>
					</div>

					<!-- 스타일페이지 페이징 바 -->
					<nav aria-label="Page navigation example">
					  <ul class="pagination justify-content-center">
						
					  </ul>
					</nav>
				</section>
				<div class="container mt-5 mb-5 row d-flex justify-content-center">

					<button for class="btn btn-primary col-6" type="submit">
				  		예약 하기
				  	</button>
				  						
				</div>
	
				<section id="move3">
					<button class="nav-link btn float-start pe-1" id="schedule-tab" data-bs-target="#schedule" data-bs-toggle="tab" role="tab" type="button" onclick="changeTab('schedule')">
					 	<i class="bi bi-arrow-left"></i>  이전
					</button>
				</section>	
			  </div>
			  
			  <div class="tab-pane fade container" id="appointment" role="tabpanel" aria-labelledby="appointment-tab">
				  <div class="container mt-5">
					  <div class="row col text-end">
						  <div class="col-5 row">
							  <label for="phone" class="form-label col-3 ms-0 mt-2 me-2">휴대폰 번호</label>
							  <input id="phone" class="form-control col" type="text" placeholder="ex) 01012341234" aria-label="default input example">
						  </div>
						  <div class="col-5 row">
							  <label for="name" class="form-label col-2 mt-2 me-2">이름</label>
							  <input id="name" class="form-control col ms-0" type="text" placeholder="김은지" aria-label="default input example">
						  </div>
						  <input type="button" class="col-2 btn btn-primary ms-4 me-0" id="check-apm" value="예약내역 확인"/>
					    </div>
					    <div class="row col mt-5">
					    	<table class="table text-center">
							  <thead class="table-stripe">
							        <tr>
							          <th scope="col">#</th>
								      <th scope="col">일정</th>
								      <th scope="col">디자이너</th>
								      <th scope="col">스타일</th>
								      <th scope="col"></th>
								    </tr>
							  </thead>
							  <tbody>
							    <tr>
								</tr>
							  </tbody>
							</table>
					    </div>
				   </div>
			   </div>
		    </div>
	    </div>
	</section>
	
	<!-- 일정, 디자이너, 스타일 정보를 hidden으로 넘긴다. -->
	<input type="hidden" name="schedule" id="schedule_input">
	<input type="hidden" name="memberNo" id="designer_input">
	<input type="hidden" name="styleNo" id="style_input">
	
  </form>
</main>
  	
  <%@ include file="../common/footer.jsp" %>
  
 	<script>
	 	const today = new Date();
	 	today.setDate(today.getDate());
	 	const maxDate = new Date();
	 	maxDate.setMonth(maxDate.getMonth() + 1);
	 	
		const picker = new tempusDominus.TempusDominus(document.getElementById('datetimepicker1'), {
			    display: {
			    	viewMode: 'calendar',
			        components: {
			            calendar: true,
			            date: true,
			            month: true,
			            year: true,
			            decades: true,
			            clock: false,
			            hours: false,
			            minutes: false,
			            seconds: false,
			          },
			        icons: {
			            type: 'icons',
			            time: 'fa fa-solid fa-clock',
			            date: 'fa fa-solid fa-calendar',
			            up: 'fa fa-solid fa-arrow-up',
			            down: 'fa fa-solid fa-arrow-down',
			            previous: 'fa fa-solid fa-chevron-left',
			            next: 'fa fa-solid fa-chevron-right',
			            today: 'fa fa-solid fa-calendar-check',
			            clear: 'fa fa-solid fa-trash',
			            close: 'fas fa-solid fa-xmark'
			        },
			    },
			    stepping : 30,
				restrictions: {
				    minDate: today,
				    maxDate: maxDate,
				},
			  	localization: {
				    locale: 'KR',
				    format: 'yyyy-MM-dd'
				},
				
		});
	 	// 텝 메뉴 바꾸기
	    function changeTab(tabId) {
		    // 모든 탭 버튼의 aria-selected 속성을 false로 변경
		    $('.nav-link').attr('aria-selected', 'false').attr('tabindex', '-1').removeClass('active');
	
		    // 클릭한 버튼의 aria-selected 속성을 true로 변경
		    $('#' + tabId + '-tab').attr('aria-selected', 'true').removeAttr('tabindex').addClass('active');
		    
		    $('.tab-pane').removeClass('active');
		    $('#' + tabId).addClass('active').addClass('show');
		}
	  
	  
	    $(function(){
			// 날짜와 시간, 둘다 선택이 되면 되는 것
			// 우선 클릭 이벤트가 발생하면 selected된 시간데이터를 가지고, 조건에 맞는 디자이너를 선택하면 됨
			// 날짜는 무조건 있어야함. 둘 중에 하나라도 비어있으면 안돼
			// 1. 날짜가 있는지 확인
			// 2. 날짜와 시간이 모두 선택됐다면, 예약테이블에 그 날, 그 시간에 있는 예약을 모두 찾아. 
			// 3. 전체 디자이너 중, 이미 예약이 있는 사람이 아니고, 날짜로 : 그 날 휴일이 아니고, 시간: 근무 시간이 선택된 시간 범위를 포함하는 디자이너를 모두 리턴
			$('.cell').click(function(){
	 	  		if($('#datetimepicker1Input').val() == "") {
	 	  			alert("날짜를 선택하세요.");
	 	  		} else {
				    $('.cell').removeClass('select');
				    $(this).addClass('select');
				    selectDesignerList();
				    $('input#schedule_input').val($('#datetimepicker1Input').val() + ' ' + $('.cell.select').text());
	 	  		}
			});
			
			$(document).on('click', '.member', function() {
				$('.member').removeClass('select');
				$(this).addClass('select');
				$('input#designer_input').val($('.member.select').attr('id'));
			});
			
			$(document).on('click', '.menu', function() {
				$('.menu').removeClass('select');
				$(this).addClass('select');
				$('input#style_input').val($('.menu.select').attr('id'));
			});
			
			//- 검색 버튼을 눌렀을 때
			//- 페이지 맨 처음 로드 될 때 스타일 list get
			// division2에 대한 검색
			$('#division1').change(function() {
				let division1 = $(this).val();
				selectDivision2ListAsDivision1(division1);
			});

			// section category의 버튼이 눌리면, 해당 조건에 대한 스타일 list 리턴 (페이지네이션? 필요함? 많으면 필요할 수 있지?)
			// 데이터는 category의 div 중, class가 input group인 것에서 selected 된 것 속성 근데 이거 그냥 리스트로 못 넘기나?
			$('#category button').click(function() {
				selectStyleListAsDivisions(1);
			});
			
			// 페이징바의 번호가 눌리면 파라미터로 cPage페이지값 전달해야함
			$('ul.pagination').on('click', 'div.page-link', function(event) {
				
				console.log($(event.target).text());
			    selectStyleListAsDivisions($(event.target).text());
			});
			
			// 예약확인 버튼 클릭시
			$('#check-apm').click(function() {
				console.log("여기는 온다는거지?");
				selectAppointmentAsCustomer();
			});
			
			selectStyleListAsDivisions(1);
		});
	    
	    // 왜 상대경로로 안 먹히는지를 모르겠음.
	    const contextPath = '<%= request.getContextPath()%>'
 	  	function selectDesignerList() {
 	  		
 	  		// 만약에 날짜가 없으면 날짜를 선택하라는 알림이 떠야하고, 아니면
 	  		if($('#datetimepicker1Input').val() == "") {
 	  			alert("날짜를  선택해 주세요.");
 	  			return;
 	  		}
 	  		$.ajax({
 	  			url : "appointment/designer",
 	  			data : {
 	  				schedule :  $('#datetimepicker1Input').val() + " " + $('.cell.select').text()
 	  			},
 	  			success : function(list) {
 	  					let tmp = '';
 	  				
 	  					if (list.length == 0 ) {
 	  						tmp = '<div class="d-flex align-items-stretch justify-content-center">'
 	  							+ '해당 일정에 예약 가능한 디자이너가 없습니다. 다른 일정을 선택해주세요.'
 	  							+ '</div>';
 	  					} else {
 	  						for(let i=0 ; i < list.length; i++) {
 		          				tmp += '<div class="col-lg-2 col-md-4 d-flex align-items-stretch">'
 		          				    + '<div class="member" id="'+ list[i].memberNo +'">'
 		      						+ '<img src="'+ contextPath + list[i].profileImg +'">'
 		      						+ '<h4>'+ list[i].nickname +'</h4>'
 							        + '<span>'+ list[i].position+'</span>'
 		      						+ '</div>'
 		      						+ '</div>'
 	 	  					}
 	  					}
 	  							
 	  					$('.team .row').html(tmp);
 	  			},
 	  			error : function() {
 	  				console.log("디자이너 호출 실패");
 	  			}
 	  			
 	  		});
	    }
	    
	    // division
	    function selectDivision2ListAsDivision1(division1) {
 	  		let tmp = '<option selected>전체</option>';
 	  		if (division1 == '전체') {
 	  			$('select#division2').html(tmp);
 	  		} else {
 	 	  		$.ajax({
 	 	  			url : "style/division",
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
	    
	    // /list/division
	    function selectStyleListAsDivisions(cPage) {

	    	// 앞, 뒤 버튼이 눌린 것 > 둘 중 어떤 버튼이 눌렸는지를 알아야함. laquo / raquo
	    	
	    	// 이 값이 들어왔다는건, 현재 페이지는 무조건 1보다 크거나 maxPage보다 작다는 것임. 
	    	if (cPage == '«') {
	    		cPage = Number($('.page-item.active .page-link').text()) - 1;
	    	} else if (cPage == '»') {
	    		cPage = Number($('.page-item.active .page-link').text()) + 1;
	    	}
	    	
	    	console.log(cPage);
	    	let tmp = '';
	    	let pageTmp = '';
	    	
	    	$.ajax({
	    		url : "style/list/division?cPage=" + cPage,
	    		data : {
	    			division1 : $('select#division1').val(),
	    			division2 : $('select#division2').val(),
	    			orderBy : $('#orderBy').val()
	    		},
	    		// style 목록, 페이지 정보, + 추가할 내용은 select 될 수 있도록 해야함.
	    		success : function(result) {
	    			let list = result.list;
	    			let pi = result.pi;
					
	    			console.log(list)
	    			// 스타일
	    			if(list.length == 0) {
	    				tmp = '<div class="d-flex align-items-center justify-content-center mb-5">'
	    					+ '선택하신 조건에 맞는 스타일은 준비중입니다.'
	    					+ '</div>'
	    					
	    					$('.style .container .row').html(tmp);
	    					$('ul.pagination').html('');
	    					return;
	    					
	    			} else {
		    			for (let i = 0; i < list.length; i++) {
							tmp += '<div class="card col-lg-2 col-md-4 d-flex align-items-stretch mb-5 menu" style="width: 18rem;" id="'+ list[i].styleNo + '">'
							  	+ '<img src="'+ 'https://img.marieclairekorea.com/2022/05/mck_6295da528ab58-scaled.jpg' +'" class="card-img-top" alt="...">'
							  	+ '<div class="card-body">'
							  	+ '<h5 class="card-title">'+list[i].styleName+'</h5>'
							  	+ '</div>'
								+ '</div>';
		    			}
	    			}
					
	    			// 페이징바
	    			// 이전
	    			if (pi.currentPage == 1) {
	    				pageTmp =  '<li class="page-item disabled">'
					      		+ '<div class="page-link">'
					        	+ '<span aria-hidden="true">&laquo;</span>'
					      		+ '</div>'
					    		+ '</li>'
	    			} else {
	    				pageTmp =  '<li class="page-item">'
					      		+ '<div class="page-link">'
					        	+ '<span aria-hidden="true">&laquo;</span>'
						      	+ '</div>'
							    + '</li>'
	    			}
	    			
	    			// 페이지
	    			for (let p = pi.startPage ; p <= pi.endPage; p++ ) {
	    				if (p == pi.currentPage) {
	    					pageTmp += '<li class="page-item active"><div class="page-link">'+ p +'</div></li>'
	    				} else {
	    					pageTmp += '<li class="page-item"><div class="page-link">'+ p +'</div></li>'
	    				}
	    			}
	    			
	    			// 이후
	    			if (pi.currentPage == pi.maxPage || list.length == 0) {
	    				pageTmp += '<li class="page-item disabled">'
					      		+  '<div class="page-link">'
					        	+  '<span aria-hidden="true">&raquo;</span>'
						      	+  '</div>'
							    +  '</li>'
	    			} else {
	    				pageTmp += '<li class="page-item">'
					      		+  '<div class="page-link">'
					        	+  '<span aria-hidden="true">&raquo;</span>'
						      	+  '</div>'
							    +  '</li>'
	    			}
	    			$('.style .container .row').html(tmp);
	    			$('ul.pagination').html(pageTmp);
	    		},
	    		error : function() {
	    			console.log('스타일 목록 호출 실패')
	    		}
	    	});
	    	
	    }
	    
    	function selectAppointmentAsCustomer() {
	    	$.ajax({
	    		url : "appointment/list",
	    		data : {
	    			// customer로 들어가는지 확인
	    			customerName : $('input#name').val(),
	    			phone : $('input#phone').val()
	    		},
	    		success : function(list) {
	    			
	    			let tmp = '';
	    			if(list.length == 0) {
	    				tmp = '해당 고객에 대한 예약 내역이 존재하지 않습니다.'
	    			} else {
	    				for(i = 0; i < list.length; i++) {
	    					tmp += '<tr>'
						      	 + '<th scope="row">' + (i+1) + '</th>'
						         + '<td>' + list[i].schedule + '</td>'
						         + '<td><a class="link-dark" href="' + 'designer/'+ list[i].memberNo + '">'+ list[i].nickname + '</a></td>' // 상세페이지로 이동
						      	 + '<td><a class="link-dark" href="' + 'style/'+ list[i].styleNo + '">' + list[i].styleName + '</a></td>'
						         + '<td class="text-end cancel"><button class="btn btn-primary btn-sm" id="btn'+ list[i].appointmentNo + '">예약 취소</button></td>'
						         + '</tr>'
	    				}
	    			}
	    			
	    			$('div#appointment table tbody').html(tmp);
	    			return;
	    				
	    		},
	    		error : function() {
	    			console.log('예약 목록 호출 실패')
	    		}
	    		
	    		
	    	});
    	}
	    
	</script>
<body>