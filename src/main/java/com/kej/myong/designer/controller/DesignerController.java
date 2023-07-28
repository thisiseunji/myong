package com.kej.myong.designer.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kej.myong.admin.member.model.vo.Member;
import com.kej.myong.designer.model.service.DesignerService;

@Controller
@RequestMapping("designer")
public class DesignerController {
	
	@Autowired
	private DesignerService designerService;
	
	@GetMapping
	public String selectAllDesigner(Model model) {
		
		List<Member> designerList = designerService.selectAllDesigner();
		
		model.addAttribute("designerList", designerList);
		
		return "designer/designerListView";
	}
	
	@GetMapping("/{id}")
	public String selectDesignerById(@PathVariable int id, Model model) {
		Member designer = designerService.selectDesignerById(id);
		
		String startTime = designer.getStartTime().substring(11, 16);
		designer.setStartTime(startTime);
		String endTime = designer.getEndTime().substring(11, 16);
		designer.setEndTime(endTime);
		
		model.addAttribute("designer", designer);

		return "designer/designerDetailView";
	}
}
