package com.kej.myong.style.model.service;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kej.myong.style.model.dao.StyleDao;
import com.kej.myong.style.model.vo.Style;

@Service
public class StyleServiceImpl implements StyleService{

	@Autowired
	private StyleDao styleDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public ArrayList<String> selectDivision2ListAsDivision1(String division1) {
		return styleDao.selectDivision2ListAsDivision1(sqlSession, division1);
	}

	@Override
	public int selectListCountAsDivisions(Style style) {
		return styleDao.selectListCountAsDivisions(sqlSession, style); 
	}

	@Override
	public ArrayList<Style> selectStyleListAsDivisions(Style style) {
		return styleDao.selectStyleListAsDivisions(sqlSession, style);
	}

	
}
