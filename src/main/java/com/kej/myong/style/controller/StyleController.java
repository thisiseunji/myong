package com.kej.myong.style.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kej.myong.style.model.service.StyleService;
import com.kej.myong.style.model.vo.Style;

@Controller
@RequestMapping("style")
public class StyleController {
	
	@Autowired
	private StyleService styleService;
	
	// 근데 결국 예약페이지에서 있는 내용이 스타일 컴포넌트로... 따로 떨어져있어야하는거 아닌가?
	// 스타일 division1에 따른 division2 목록 조회
	@GetMapping(value="/division", produces="application/json; charset=utf-8")
	@ResponseBody
	public String selectDivision2ListAsDivision1(String division1) {
		ArrayList<String> list = styleService.selectDivision2ListAsDivision1(division1);
		return new Gson().toJson(list);
	};
	
	// 필터링 / 정렬 포함 리스트 조회
	// 모든 리스트를 호출할 때와, where을 쓸 때가 있음. 이걸 if 문으로 처리할 수 있으면  하나로 가능함.
	@GetMapping(produces = "application/json; charset=utf-8")
	@ResponseBody
	public String selectStyleList(@RequestParam(value="cPage", defaultValue="1") int currentPage, Style style) {
		ArrayList<Style> list = styleService.selectStyleList(style);
		return "";
	}
	
	@RequestMapping("/list")
	public String styleListPage() {
		return "style/styleListView";
	}
	
	@RequestMapping("/detail")
	public String styleDetailPage() {
		return "style/styleDetailView";
	}
}
