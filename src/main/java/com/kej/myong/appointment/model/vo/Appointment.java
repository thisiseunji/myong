package com.kej.myong.appointment.model.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class Appointment {
    private int appointmentNo;
	private Date schedule;
	private Date createdAt;
	private int price;
	private String progress;
	private int memberNo;
	private int styleNo;
	private int customerNo;
	// 입력시 필요한 고객 데이터
	private String phone;
	private String name;
}
