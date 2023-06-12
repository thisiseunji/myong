package com.kej.myong.admin.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kej.myong.admin.member.model.service.MemberService;
import com.kej.myong.admin.member.model.vo.Member;

@Controller
@RequestMapping("admin/register")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	//register
	@GetMapping
	public String memberRegisterPage() {
		return "admin/member/registerFormView";
	}
	
	@PostMapping
	public String insertMember(Member m, HttpSession session) {

		String encPwd = bcryptPasswordEncoder.encode(m.getMemberPwd());
		
		m.setMemberPwd(encPwd);
		
		int result = memberService.insertMember(m);
		
		if (result == 0) {
			session.setAttribute("alertMsg", "디자이너 등록 실패");
			
		} else {
			session.setAttribute("alertMsg", "디자이너 등록 성공");

		}
		return "redirect:/";

	}

}
