package com.kej.myong.utils.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PageInfo {

	private int listCount;
	private int currentPage;
	private int pageLimit;
	private int reviewLimit;
	
	private int maxPage;
	private int startPage;
	private int endPage;
}