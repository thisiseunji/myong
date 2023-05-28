package com.kej.myong;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class temp {
	@RequestMapping("chat")
	public String chatPage() {
		return "chat/chatView";
	}
	
	@RequestMapping("designer/list")
	public String designerListPage() {
		return "designer/designerListView";
	}
	
	@RequestMapping("designer/detail")
	public String designerDetailPage() {
		return "designer/designerDetailView";
	}
	
	
	@RequestMapping("style/list")
	public String styleListPage() {
		return "style/styleListView";
	}
	
	@RequestMapping("style/detail")
	public String styleDetailPage() {
		return "style/styleDetailView";
	}
	
	

}


