<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약</title>

<style>

.card {
  box-shadow: 0px 4px 8px 0px #7986CB;
}

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
  border: 1px solid #3D5AFE;
}

.cell.select {
  background-color: #3D5AFE;
  color: #fff;
}

span.fa-calendar {
  color: black;
  font-size: 20px;
  padding-top: 7px;
  cursor: pointer;
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
  
	<form method="post" action="/*">
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
					<div class="container mt-5">
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
				          <div class="card-body p-3 p-sm-5">
				            <div class="row text-center mx-0">
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1 ">10:00AM</div></div>
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">10:30AM</div></div>
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">11:00AM</div></div>
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">11:30AM</div></div>
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">12:00PM</div></div>
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">12:30PM</div></div>
				            </div>
				            <div class="row text-center mx-0">
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">1:00PM</div></div>
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">1:30PM</div></div>
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">2:00PM</div></div>
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">2:30PM</div></div>
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">3:00PM</div></div>
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">3:30PM</div></div>
				            </div>
				            <div class="row text-center mx-0">
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">4:00PM</div></div>
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">4:30PM</div></div>
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">5:00PM</div></div>
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">5:30PM</div></div>
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">6:00PM</div></div>
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">6:30PM</div></div>
				            </div>
				            <div class="row text-center mx-0">
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">7:00PM</div></div>
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">7:30PM</div></div>
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">8:00PM</div></div>
				              <div class="col-md-2 col-4 my-1 px-2"><div class="cell py-1">8:30PM</div></div>
				            </div>
				          </div>

				 		달력으로 일정 선택하면 -> 시간이 뜨고, 시간 선택하면 -> 선택 가능한 디자이너가 나오도록 구현 
					</div>
				</section>
				<section id="team" class="team">
					<div class="container mt-3">
						<div class="row">
          					<div class="col-lg-2 col-md-4 d-flex align-items-stretch">
          						<div class="member">
          							<!-- 경로가 이상함 왜 절대경로처럼 지정해줘야 하는걸까?
          							<img src="/../resources/img/team/team-1.jpg" alt=""> -->
          							<img src="https://yt3.googleusercontent.com/7PTY8Wez_7vNC5d-tIfEpvGvsqx9Je9V_BYpBejUosB2oQ5gIE8xLviG2X2W26vPPgwmZuJ1KQ=s900-c-k-c0x00ffffff-no-rj">
          							<h4>찌드래곤</h4>
						            <span>수석 디자이너</span>
          						</div>
          					</div>
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
			  
			  <div class="tab-pane fade container" id="style" role="tabpanel" aria-labelledby="style-tab">
				<section id="category" class="category container row mt-5">
				  		<div class="input-group col">
						  <select class="form-select" id="inputGroupSelect04" aria-label="Example select with button addon">
						    <option selected>전체</option>
						    <option value="hair">헤어</option>
						    <option value="makeup">메이크업</option>
						    <option value="nail">네일</option>
						  </select>
						  <button class="btn btn-outline-secondary" type="button">적용</button>
						</div>
				  		<div class="input-group col">
						  <select class="form-select" id="inputGroupSelect04" aria-label="Example select with button addon">
						    <option selected>전체</option>
						    <option value="1">숏</option>
						    <option value="2">미디움</option>
						    <option value="3">롱</option>
						    <option value="1">컬러</option>
						    <option value="2">펌</option>
						    <option value="3">드라이</option>
						  </select>
						  <button class="btn btn-outline-secondary" type="button">적용</button>
						</div>
				  		<div class="input-group col">
						  <select class="form-select" id="inputGroupSelect04" aria-label="Example select with button addon">
						    <option selected>예약 많은 순</option>
						    <option value="1">후기 많은 순</option>
						    <option value="2">가격 낮은 순</option>
						    <option value="3">가격 높은 순</option>
						  </select>
						  <button class="btn btn-outline-secondary" type="button">적용</button>
						</div>
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
								<input id="phone" class="form-control col" type="text" placeholder="ex) 010-0000-0000" aria-label="default input example">
							</div>
							<div class="col-5 row">
								<label for="name" class="form-label col-2 mt-2 me-2">이름</label>
								<input id="name" class="form-control col ms-0" type="text" placeholder="김은지" aria-label="default input example">
							</div>
							<button class="col-2 btn btn-primary ms-4 me-0">예약내역 확인</button>
						</div>
				    </div>
				</div>			
			</div>
		</div>
	</section>
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
				    format: 'yyyy년 M d일'
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
	  
	  
	    $(document).ready(function(){
			//시간 선택 : 만일 이미 예약 내역이 있으면 선택이 안 되도록, 예약이 넘어갈 때는 selected 된 div가 없으면 넘어가지 못하도록 -> 해야함. 
			$('.cell').click(function(){
			    $('.cell').removeClass('select');
			    $(this).addClass('select');
				});
		});
 	  
	</script>
<body>
