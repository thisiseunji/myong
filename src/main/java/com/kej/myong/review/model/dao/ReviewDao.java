package com.kej.myong.review.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kej.myong.review.model.vo.Review;

@Repository
public class ReviewDao {

	public int insertReview(SqlSessionTemplate sqlSession, Review r) {

		return sqlSession.insert("reviewMapper.insertReview", r);
	}

}
