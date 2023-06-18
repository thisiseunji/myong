package com.kej.myong.review.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kej.myong.review.model.dao.ReviewDao;
import com.kej.myong.review.model.vo.Review;

@Service
public class ReviewServiceImpl implements ReviewService{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private ReviewDao reviewDao;

	@Override
	public int insertReview(Review r) {
		return reviewDao.insertReview(sqlSession, r);
	}

}
