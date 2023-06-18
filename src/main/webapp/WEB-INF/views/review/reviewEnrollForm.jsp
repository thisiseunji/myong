<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰</title>
</head>
<body>
    <h1>리뷰 등록</h1>
    <form action="review" method="post" enctype="multipart/form-data">
        <label for="title">제목:</label>
        <input type="text" id="title" name="title" required><br><br>
        
        <label for="content">내용:</label>
        <textarea id="content" name="content" rows="4" cols="50" required></textarea><br><br>
        
        <label for="multipartFile">이미지 파일:</label>
        <input type="file" id="multipartFile" name="multipartFile" required><br><br>
        
         <label for="styleStar">스타일 평점:</label>
        <input type="number" id="styleStar" name="styleStar" required><br><br>
        
        <label for="priceStar">가격 평점:</label>
        <input type="number" id="priceStar" name="priceStar" required><br><br>
        
        <label for="serviceStar">서비스 평점:</label>
        <input type="number" id="serviceStar" name="serviceStar" required><br><br>
        
        <label for="appointmentNo">예약 번호:</label>
        <input type="number" id="appointmentNo" name="appointmentNo" required><br><br>
        
        <button type="submit">등록</button>
    </form>
</body>
</html>