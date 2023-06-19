package com.kej.myong.utils.template;

import com.kej.myong.utils.model.vo.PageInfo;

public class Pagination {
	
	public static PageInfo getPageInfo(int listCount, int currentPage, int pageLimit, int reviewLimit) {
		
		int maxPage = (int)Math.ceil((double)listCount / reviewLimit);
		int startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		int endPage = startPage + pageLimit - 1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		return new PageInfo(listCount, currentPage, pageLimit, reviewLimit, maxPage, startPage, endPage);
	}
}
