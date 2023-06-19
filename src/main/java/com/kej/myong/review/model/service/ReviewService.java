package com.kej.myong.review.model.service;

import java.util.ArrayList;

import com.kej.myong.admin.member.model.vo.Member;
import com.kej.myong.review.model.vo.Review;
import com.kej.myong.utils.model.vo.PageInfo;

public interface ReviewService {

	int insertReview(Review r);

	int deleteReview(Review r);

	ArrayList<Review> selectReview(PageInfo pi, int memberNo);

	int selectListCount();
	

}
