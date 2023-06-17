package com.kej.myong.review.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.kej.myong.review.model.service.ReviewService;
import com.kej.myong.review.model.vo.Review;
import com.kej.myong.utils.FileSaver;

@Controller
@RequestMapping("/review")
public class ReviewController {
	
	@Autowired
	private ReviewService reviewService;
	
	@Autowired
	private FileSaver fileSaver;
	
	
	@GetMapping()
	public String reviewEnrollForm(){
		return "review/reviewEnrollForm";
		
	}

	@PostMapping(produces = "text/html; charset=utf-8", consumes = { MediaType.MULTIPART_FORM_DATA_VALUE })
	public String insertReview(Review r){
		
		System.out.println(r);
		
		MultipartFile multipartFile = r.getMultipartFile();
		 
		System.out.println(multipartFile);
		
		// 파일 저장하기 : 파일을 저장 경로를 반환
		r.setReviewImg(fileSaver.storeFile(multipartFile, "review"));
		
		int result = reviewService.insertReview(r);
		
		return result > 0? "리뷰 등록 성공" : "리뷰 등록 실패";
	}	
}
