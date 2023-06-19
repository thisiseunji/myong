package com.kej.myong.review.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kej.myong.review.model.dao.ReviewDao;
import com.kej.myong.review.model.vo.Review;
import com.kej.myong.utils.model.vo.PageInfo;

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

	@Override
	public int deleteReview(Review r) {
		return reviewDao.deleteReview(sqlSession, r);
	}

	@Override
	public ArrayList<Review> selectReview(PageInfo pi, int memberNo) {
		return reviewDao.selectReview(sqlSession, pi, memberNo);
	}

	@Override
	public int selectListCount() {
		
		return reviewDao.selectListCount(sqlSession);
	}
	

}
