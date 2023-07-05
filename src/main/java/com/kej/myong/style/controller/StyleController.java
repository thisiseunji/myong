package com.kej.myong.style.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.kej.myong.style.model.service.StyleService;
import com.kej.myong.style.model.vo.Style;
import com.kej.myong.utils.model.vo.PageInfo;
import com.kej.myong.utils.template.Pagination;

@Controller
@RequestMapping("style")
public class StyleController {
	
	@Autowired
	private StyleService styleService;
	
	// 예약페이지와, 스타일 리스트에서 쓰이는 ajax 요청
	// 스타일 division1에 따른 division2 목록 조회
	@GetMapping(value="/division", produces="application/json; charset=utf-8")
	@ResponseBody
	public String selectDivision2ListAsDivision1(String division1) {
		ArrayList<String> list = styleService.selectDivision2ListAsDivision1(division1);
		return new Gson().toJson(list);
	};
	
	// 예약페이지와, 스타일 리스트에서 쓰이는 ajax 요청
	// division1,2에 따른 스타일 조회
	@GetMapping(value="/list/division", produces= "application/json; charset=utf-8")
	@ResponseBody
	public String selectStyleListAsDivisions(@RequestParam(value="cPage", defaultValue="1") int currentPage, Style style) {
		// 페이징 처리
		// 조건에 따른 스타일 수 (전체일 경우 전체, 헤어의 경우 헤어만, 헤어의 컷의 경우 헤어의 컷만 count한 숫자가 리턴됨)
		int listCount = styleService.selectListCountAsDivisions(style);
		
		int pageLimit = 10;
		int contentLimit = 8;

		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, pageLimit, contentLimit);
		
		ArrayList<Style> list = styleService.selectStyleListAsDivisions(style);
		
		JsonObject jsonObject = new JsonObject();
		jsonObject.add("list", new Gson().toJsonTree(list));
		jsonObject.add("pi", new Gson().toJsonTree(pi));
		
		return jsonObject.toString();
	}
	
	// 임시
	@RequestMapping("/list")
	public String styleListPage() {
		return "style/styleListView";
	}
	
	@RequestMapping("/detail")
	public String styleDetailPage() {
		return "style/styleDetailView";
	}
}
