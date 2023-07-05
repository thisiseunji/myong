package com.kej.myong.style.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kej.myong.style.model.vo.Style;

@Repository
public class StyleDao {
	
	public ArrayList<String> selectDivision2ListAsDivision1(SqlSessionTemplate sqlSession, String division1) {
		return(ArrayList)sqlSession.selectList("styleMapper.selectDivision2ListAsDivision1", division1);
	}
	
	// division수에 따른 숫자 세기
	public int selectListCountAsDivisions(SqlSessionTemplate sqlSession, Style style) {
		return sqlSession.selectOne("styleMapper.selectListCountAsDivisions", style);
	}

	public ArrayList<Style> selectStyleListAsDivisions(SqlSessionTemplate sqlSession, Style style) {
		return (ArrayList)sqlSession.selectList("styleMapper.selectStyleListAsDivisions", style);
	}

}
