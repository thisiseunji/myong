package com.kej.myong.appointment.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kej.myong.customer.service.CustomerService;
import com.kej.myong.customer.vo.Customer;
import com.kej.myong.appointment.model.service.AppointmentService;
import com.kej.myong.appointment.model.vo.Appointment;

@Controller
@RequestMapping("appointment")
public class AppointmentController {
	
	@Autowired
	private AppointmentService appointmentService;
	
	@Autowired
	private CustomerService customerService;
	
	@GetMapping
	public String reservationPage() {
		// 이럴 필요가 없지않낭..? 전체 전체의 경우에 조건 없이 검색해서 리턴만하면 되는뎅...
		// 그냥 페이지 로딩 되자마자 한 번 하고, 버튼 들어갈 때 마다 한 번 하고 하면 될 것 같은뎅  
		return "appointment/appointmentView"; 
	}
	// 여기 해야함...
	@PostMapping
	public void insertAppointment(Appointment appointment) {
		// 사용자 정보를 이름과 번호로 검색해서 -> 사용자가 있으면 정보 받아오고
		// 없으면 insert 해서 -> 예약정보 생성한다.
		// 잘 넘어옴
		System.out.println(appointment);
		//Appointment(appointmentNo=0, schedule=2023-07-22 11:00 AM, createdAt=null, price=0, progress=null, memberNo=2, styleNo=26, customerNo=0, phone=01064569047, name=김은지)
		Customer customer = new Customer();
		customer.setCustomerName(appointment.getName());
		customer.setPhone(appointment.getPhone());
		System.out.println(customer);
		Customer selectedCmr = customerService.selectCustomerByNameAndPhone(customer);
		System.out.println(selectedCmr);
		if (selectedCmr == null) { // 조회된 고객이 없으면 생성 후 조회
			customerService.insertCustomer(customer); 
			selectedCmr = customerService.selectCustomerByNameAndPhone(customer);
		} 
		
		appointment.setCustomerNo(selectedCmr.getCustomerNo());
		appointmentService.insertAppointment(appointment);
		
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
