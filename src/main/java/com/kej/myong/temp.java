package com.kej.myong;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class temp {
	/*@RequestMapping("chat")
	public String chatPage() {
		return "chat/chatView";
	}*/
	
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
	
	@RequestMapping("appointment")
	public String reservationPage() {
		return "appointment/appointmentView"; 
	}
	
	// admin member
	@RequestMapping("admin/login")
	public String adminLoginPage() {
		return "admin/member/loginView";
	}
	
	@RequestMapping("admin/register")
	public String adminMemberRegisterPage() {
		return "admin/member/registerView";
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


