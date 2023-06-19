package com.kej.myong.review.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kej.myong.review.model.vo.Review;
import com.kej.myong.utils.model.vo.PageInfo;

@Repository
public class ReviewDao {

	public int insertReview(SqlSessionTemplate sqlSession, Review r) {

		return sqlSession.insert("reviewMapper.insertReview", r);
	}

	public int deleteReview(SqlSessionTemplate sqlSession, Review r) {
		
		return sqlSession.update("reviewMapper.deleteReview", r);
	}

	public ArrayList<Review> selectReview(SqlSessionTemplate sqlSession, PageInfo pi, int memberNo) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getReviewLimit(); // offset : 건너뛸 숫자
		int limit = pi.getReviewLimit(); // limit : 조회할 갯수
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("reviewMapper.selectReview", memberNo, rowBounds);
	}

	public int selectListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("reviewMapper.selectListCount");
	}

}
