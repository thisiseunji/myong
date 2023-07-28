package com.kej.myong.designer.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kej.myong.admin.member.model.vo.Member;

@Repository
public class DesignerDao {
	
	public Member selectDesignerById(SqlSessionTemplate sqlSession, int id) {
		return sqlSession.selectOne("memberMapper.selectDesignerById", id);
	}

	public List<Member> selectAllDesigner(SqlSessionTemplate sqlSession) {
		return sqlSession.selectList("memberMapper.selectAllDesigner");
	}

}
