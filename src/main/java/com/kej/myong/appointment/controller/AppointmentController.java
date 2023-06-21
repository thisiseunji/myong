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
	
	@GetMapping(value = "/designer", produces = "application/json; charset=utf-8")
	@ResponseBody
	// 예약 페이지에서의 ajax 요청
	public String selectMemberListBySchedule(String schedule) {
		ArrayList<Appointment> list = appointmentService.selectMemberListBySchedule(schedule);
		return new Gson().toJson(list);
	}
}
