package com.kej.myong.review.model.vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class Review {
	private int reviewNo;
	private String title;
	private String content;
	// 리뷰 데이터 받아올 때, 이미지 파일을 담기위한 용도
	private MultipartFile multipartFile;
	private String reviewImg;
	private int styleStar;
	private int priceStar;
	private int serviceStar;
	private String reply; // ""
	private int appointmentNo;
	// 리뷰 삭제시 검증을 위해 저장하는 용도
	private int customerNo;
}
