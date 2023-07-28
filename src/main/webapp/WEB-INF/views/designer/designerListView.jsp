<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>디자이너 > 목록</title>
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
          <li><a href="/">Home</a></li>
          <li>Team</li>
        </ol>
        <h2>Team</h2>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Team Section ======= -->
    <section id="team" class="team">
      <div class="container">
        <div class="row">
        <c:choose>  
			<c:when test="${ empty designerList }">
				<div class="text-center">디자이너 정보가 없습니다.</div>
			</c:when>
			<c:otherwise>
				<c:forEach var="member" items="${designerList}">
				    <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
		            <div class="member">
			           	<a href="designer/${member.getMemberNo()}">
			              <img src="<%= request.getContextPath() %>${member.getProfileImg()}" alt="">
			              <h4>${member.getNickname()}</h4>
			              <span>${member.getPosition()}</span>
			              <p>
			                ${member.getDescription()}
			              </p>
			           	</a>
		            </div>          
		          </div>
				</c:forEach>
			</c:otherwise>
		</c:choose>
        </div>
      </div>
    </section><!-- End Team Section -->

  </main><!-- End #main -->

  <%@ include file="../common/footer.jsp" %>

</body>

</html>