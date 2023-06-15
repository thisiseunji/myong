<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>디자이너 로그인</title>
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
                    <h2>디자이너 로그인</h2>
                </div>
            </section>
            <!-- End Breadcrumbs -->

            <!-- ======= Sign In Section ======= -->
            <section id="sign-in" class="sign-in">
                <div class="container mt-5 mb-5">         	
                    <form class="d-flex flex-column justify-content-center align-items-center"
                        method="post"
                        action="/*"
                    >
                    		<div class="row mt-auto mb-2">
			                    <input class="form-control"
			                        type="text"
			                        placeholder="아이디 입력"
			                        name="userId"
			                    />
		                    </div>
							<div class="row mb-3">
				                <input class="form-control"
			                        type="password"
			                        placeholder="비밀번호 입력"
			                        name="userPwd"
			                    />
			                </div>
			                <div class="row">
								<button type="submit" class="form-control btn btn-dark">로그인</button>
							</div>
                    </form>
                </div>
            </section>
        </main>
        <%@ include file="../../common/footer.jsp" %>
    </body>
</html>
