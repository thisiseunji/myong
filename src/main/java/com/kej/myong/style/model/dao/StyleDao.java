package com.kej.myong.style.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class StyleDao {
	
	public ArrayList<String> selectDivision2ListAsDivision1(SqlSessionTemplate sqlSession, String division1) {
		return(ArrayList)sqlSession.selectList("styleMapper.selectDivision2ListAsDivision1", division1);
	}

}
