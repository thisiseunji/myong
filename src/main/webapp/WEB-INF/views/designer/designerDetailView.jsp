<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>디자이너 > 상세</title>
</head>
<body>
  <%@ include file="../common/header.jsp" %>
  
  
  
	<main id="main">
		<!-- ======= Breadcrumbs ======= -->
	    <section id="breadcrumbs" class="breadcrumbs">
	      <div class="container">
	
	        <ol>
	          <li><a href="/">Home</a></li>
	          <li>Designer Details</li>
	        </ol>
	        <h2>Designer Details</h2>
	        
	      </div>
	    </section><!-- End Breadcrumbs -->
	    
	    <section id="designerinfo">
	   		<div class="container">
	   			<button class="btn btn-primary" id="startChat">이 디자이너와 스타일 상담하기</button>
	   		</div>
	    </section>
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