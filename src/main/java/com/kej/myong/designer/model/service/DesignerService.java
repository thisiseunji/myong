package com.kej.myong.designer.model.service;

import java.util.List;

import com.kej.myong.admin.member.model.vo.Member;

public interface DesignerService {

	Member selectDesignerById(int id);

	List<Member> selectAllDesigner();

}
