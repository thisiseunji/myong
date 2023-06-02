<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>디자이너 정보 상세</title>
</head>
<body>
   <%@ include file="../../common/header.jsp" %>
   <main id="main">
	   <!-- ======= Breadcrumbs ======= -->
	   <section id="breadcrumbs" class="breadcrumbs">
	       <div class="container">
	           <ol>
	               <li><a href="/">Admin</a></li>
	               <li>Info</li>
	           </ol>
	           <h2>사용자 정보 상세(날짜 구현해야한다. 관리자의 경우 직급을 선택할 수 있도록 하고, 수수료 비율을 )</h2>
	       </div>
	   </section>
	   <!-- End Breadcrumbs -->
       
       <!-- 내용 -->    
		<div class="container mt-5 mb-5">
			<div class="row col-lg-12">
				<!-- Form START -->
				<form method="post" action="">
					<div class="row mb-5 gx-5">
						<!-- Upload profile -->
						<div class="col-lg-4">
							<div class="bg-secondary-soft px-4 py-5 rounded">
								<div class="row gy-3">
									<h4 class="mb-3 mt-0">프로필 사진</h4>
									<div class="text-center">
										<!-- Image upload -->
										<div class="square position-relative display-2 mb-3">
											<img src="https://blog.kakaocdn.net/dn/bj4oa7/btqLJWFLMgd/wu4GV8PKbXdICuyW0me0zk/img.jpg" class="img-fluid rounded mx-auto d-block" id="profile-img" alt="프로필">
											<input type="file" id="customFile" name="file" hidden="">
											<label class="btn btn-success col-12" for="customFile mb-0">사진 올리기</label>
										</div>
										<!-- Content -->
										<p class="text-muted mt-3 mb-0"><span class="me-1">Note:</span>Minimum size 300px x 300px</p>
									</div>
								</div>
							</div>
						</div>
						<!-- info detail -->
						<div class="col-lg-8 mb-5 mb-xxl-0">
							<div class="px-4 py-5 rounded">
								<div class="row g-3">
									<h4 class="mb-4 mt-0">기본 정보</h4>
									<!-- 기본 정보 -->
									<div class="col-md-6">
										<label class="form-label">이름 *</label>
										<input type="text" class="form-control" placeholder="" aria-label="readOnly" value="Scaralet">
									</div>
									<!-- 이름(닉네임) -->
									<div class="col-md-6">
										<label class="form-label">닉네임 *</label>
										<input type="text" class="form-control" placeholder="" aria-label="Last name" value="햅시바">
									</div>
									<!-- Phone number -->
									<div class="col-md-6">
										<label class="form-label">휴대폰 *</label>
										<input type="text" class="form-control" placeholder="" aria-label="Phone number" value="010-6456-0000">
									</div>
									<!-- 인스타 그램 -->
									<div class="col-md-6">
										<label for="basic-url" class="form-label">인스타그램</label>
										 <div class="input-group">
										    <span class="input-group-text" id="basic-addon3">http://www.instragram.com/</span>
										    <input type="text" class="form-control" id="basic-url" aria-describedby="basic-addon3 basic-addon4" placeholder="myong">
										 </div>
										 <div class="form-text" id="basic-addon4">업무용 계정명을 입력하세요.</div>
									</div>
									<!-- 직급 -->
									<div class="col-md-6">
										<label class="form-label">직급</label>
										<input type="text" class="form-control" placeholder="" aria-label="Phone number" value="디자이너" readonly>
									</div>
									<!-- 수수료 비율 -->
									<div class="col-md-6">
										<label class="form-label">수수료 비율</label>
										<div class="input-group flex-nowrap">
										  <input type="text" class="form-control" placeholder="20" aria-label="Username" aria-describedby="addon-wrapping" readonly>
										  <span class="input-group-text" id="addon-wrapping">%</span>
										</div>
										<div class="form-text" id="basic-addon4">개인 매출에서 해당 비율을 제한 금액이 지급됩니다.</div>
									</div>
									<!-- 한 줄 소개 -->
									<div class="col-md-12">
										<label class="form-label">한 줄 소개</label>
								        <input type="text" class="form-control" placeholder="50자 이내로 작성하세요." maxlength="50">
									</div>
									<!-- 상세 소개 -->
									<div class="col-md-12">
										<label class="form-label">상세 소개</label>
								        <textarea class="form-control" id="text" name="text" 
								      	 maxlength="200" placeholder="경력, 수상 내역 등 자유롭게 작성" rows="5"  style="resize:none;"></textarea>
								        <span class="float-end" id="count_message">0 / 500</span>
									</div>					
								</div> <!-- Row END -->
							</div>
						</div>
					</div> <!-- Row END -->
					<!-- 쉬는 날짜를 선택해야함 (아마 1주일정도?) 정기 휴일(요일)로 받고, 개인 일정에 따라 ~ 예약 내역 없으면 휴가 신청 가능하도록?-->
					<!-- 정기 휴일-->
					<div class="row mb-5 gx-5">
						<div class="form-group mb-3 col-lg-6">
							<h4 class="mb-3 mt-0">정기 휴일 지정</h4>
							<select class="form-select" aria-label="Floating label select example" id="day-select">
							  <option selected value=1>월</option>
							  <option value=2>화</option>
							  <option value=3>수</option>
							  <option value=4>목</option>
							  <option value=5>금</option>
							  <option value=6>토</option>
							  <option value=0>일</option>
							</select>
						 </div>
						 <div class="col-lg-6 mb-5 mb-xxl-0">
						 	<h4 class="mb-3 mt-0">비정기 휴일 지정</h4>
							<!-- https://getdatepicker.com/6/options/localization.html -->
							<div class='input-group' id='datetimepicker1' data-td-target-input='nearest' data-td-target-toggle='nearest'>
							   <input id='datetimepicker1Input' type='text' class='form-control' data-td-target='#datetimepicker1' readonly/>
							   <span class='input-group-text' data-td-target='#datetimepicker1' data-td-toggle='datetimepicker'>
							   		<span class='fa fa-solid fa-calendar'></span>
							   </span>
						    </div>
						   <div id="selected-dates" class="mt-3 mb-5">
						   		<ul class="list-group">
								</ul>
						   </div>						
						</div>
					</div>
					<!-- button -->
					<div class="gap-3 d-md-flex justify-content-md-end text-center">
						<button type="button" class="btn btn-primary btn-lg">변경내용 저장</button>
					</div>
				</form> <!-- Form END -->
			</div>
		</div>
   </main>
   <%@ include file="../../common/footer.jsp" %>
   
   <script type="text/javascript">
   
		const minDate = new Date();
		minDate.setDate(minDate.getDate() + 14);
		
	 	const maxDate = new Date();
	 	maxDate.setMonth(maxDate.getMonth() + 12);
	 	
		const picker = new tempusDominus.TempusDominus(document.getElementById('datetimepicker1'), {
			    display: { 
			        components: {
			        	clock: false,
			        	seconds: false,
			        	useTwentyfourHour: undefined,
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
				restrictions: {
					daysOfWeekDisabled: [], // 정기 휴일 지정시 해당 요일이 비활성화 되도록 하고싶음.
				    minDate: minDate,
				    maxDate: maxDate,
				},
			  	localization: {
				    locale: 'KR',
				    format: 'yyyy년 M d일'
				},
				
		});
		
		// 옵션 설정이 안 된다. 정기 휴일은 막고싶은데. 사실 안 막아도 기능상 문제는 없지만 진짜... 후아
	    $(function() {
	    	
	        const subscription = picker.subscribe(
	            [tempusDominus.Namespace.events.change],
	            [function(e) {
	            	
	            	let cnt = 1;
	            	
	            	let now = $(".list-group").html()
	            }]
	        );
	        
	        $('#day-select').change(function() {
	            var selectedValue = parseInt($(this).val(), 10);
	            var disabledDays = [1,2]; 
	        });
	        
            var text_max = 500;
   		
   			$('#count_message').html('0 / ' + text_max );
   	
   			$('#text').keyup(function() {
	   			var text_length = $('#text').val().length;
	   			var text_remaining = text_max - text_length;
	   			
   				$('#count_message').html(text_length + ' / ' + text_max);
	   		});
   			
   			
   			let idx = 0; // 일종의 index
   			$('#datetimepicker1Input').on('change', function(){
   	   			// 날짜를 선택하면 input의 value를 목록에 추가
   	   			let newDate = $(this).val();
   	   			
   	   			let result = $('.list-group').html();
   	   			
   	   			idx++
   	   			result += '<li class="list-group-item" id="li' + idx + '">'
			           + '<label class="form-check-label">'+ newDate +'</label>'
			           + '<button type="button" class="float-end btn-close delx" aria-label="Close" id="btn'+ idx +'"></button>'
			           + '</li>'
			    
			   $('.list-group').html(result);
   	   		   console.log($('.list-group').html());
			  
   			});
			
	    });	
   </script>
</body>
</html>