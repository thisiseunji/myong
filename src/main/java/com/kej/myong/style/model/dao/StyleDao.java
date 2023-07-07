package com.kej.myong.style.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kej.myong.style.model.vo.Style;
import com.kej.myong.utils.model.vo.PageInfo;

@Repository
public class StyleDao {
	
	public ArrayList<String> selectDivision2ListAsDivision1(SqlSessionTemplate sqlSession, String division1) {
		return(ArrayList)sqlSession.selectList("styleMapper.selectDivision2ListAsDivision1", division1);
	}
	
	// division수에 따른 숫자 세기
	public int selectListCountAsDivisions(SqlSessionTemplate sqlSession, Style style) {
		return sqlSession.selectOne("styleMapper.selectListCountAsDivisions", style);
	}

	public ArrayList<Style> selectStyleListAsDivisions(SqlSessionTemplate sqlSession, PageInfo pi, Style style) {
		
		int offset = (pi.getCurrentPage() -1) * pi.getContentLimit(); // 건너 뛸 숫자
		int limit = pi.getContentLimit(); // 조회할 갯수 
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("styleMapper.selectStyleListAsDivisions", style, rowBounds);
	}

}
