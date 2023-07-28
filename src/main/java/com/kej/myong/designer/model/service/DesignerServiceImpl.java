package com.kej.myong.designer.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kej.myong.admin.member.model.vo.Member;
import com.kej.myong.designer.model.dao.DesignerDao;

@Service
public class DesignerServiceImpl implements DesignerService{

	@Autowired
	private DesignerDao desingerDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public Member selectDesignerById(int id) {
		return desingerDao.selectDesignerById(sqlSession, id);
		
	}

	@Override
	public List<Member> selectAllDesigner() {
		return desingerDao.selectAllDesigner(sqlSession);		
	}

}
