package com.kej.myong;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class temp {
	@RequestMapping("chat")
	public String chatPage() {
		return "chat/chatView";
	}
	
	// admin member
	@RequestMapping("admin/login")
	public String adminLoginPage() {
		return "admin/member/loginView";
	}
	
	@RequestMapping("admin/myInfo")
	public String adminInfoPage() {
		return "admin/member/infoView";
	}
	
	@RequestMapping("date")
	public String dateTestPage() {
		return "admin/member/dateTest";
	}
	
	@RequestMapping("reply")
	public String replyPage() {
		return "reply/writeView";
	}

}


