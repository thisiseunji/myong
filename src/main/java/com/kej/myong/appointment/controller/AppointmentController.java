package com.kej.myong.appointment.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kej.myong.appointment.model.service.AppointmentService;
import com.kej.myong.appointment.model.vo.Appointment;

@Controller
@RequestMapping("appointment")
public class AppointmentController {
	
	@Autowired
	private AppointmentService appointmentService;
	
	@GetMapping
	public String reservationPage() {
		// 이럴 필요가 없지않낭..? 전체 전체의 경우에 조건 없이 검색해서 리턴만하면 되는뎅...
		// 그냥 페이지 로딩 되자마자 한 번 하고, 버튼 들어갈 때 마다 한 번 하고 하면 될 것 같은뎅  
		return "appointment/appointmentView"; 
	}
	
	// 예약 페이지에서의 ajax 요청 
	// 일정에 따른 디자이너 조회
	@GetMapping(value = "/designer", produces = "application/json; charset=utf-8")
	@ResponseBody
	public String selectMemberListBySchedule(String schedule) {
		ArrayList<Appointment> list = appointmentService.selectMemberListBySchedule(schedule);
		return new Gson().toJson(list);
	}


}
