package com.kej.myong.admin.member;

import java.util.regex.Pattern;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
			return "redirect:/admin/register";
			
		} else {
			
			session.setAttribute("alertMsg", "디자이너 등록 성공");
			return "redirect:/";
		}
	}
	/*
	// 아이디 유효성(숫자, 소문자만 입력 가능하도록) 및 중복 검
	@GetMapping(value="/checkid")
	@ResponseBody
	public int memberIdCheck(String checkId) {
		
		final String ID_PATTERN = "^[a-z0-9]+$";

	    Pattern pattern = Pattern.compile(ID_PATTERN);
	    
	    if (pattern.matcher(checkId).matches()) {
	    	return memberService.checkId(checkId);
	    } else {
	    	return 1;
	    }
	    
	}*/
	
	// 아이디 유효성(숫자, 소문자만 입력 가능하도록) 및 중복 검사
	@GetMapping(value="/checkid", produces = "application/html; charset=utf-8")
	@ResponseBody
	public String memberIdCheck(String checkId) {
		
		final String ID_PATTERN = "^[a-z0-9]+$";

	    Pattern pattern = Pattern.compile(ID_PATTERN);
	    
	    if (!pattern.matcher(checkId).matches()) {
	    	return "문자";
	    } else if (memberService.checkId(checkId) > 0) {
	    	return "중복";
	    } else {
	    	return "유효";
	    }
	    
	}
	
	
}
