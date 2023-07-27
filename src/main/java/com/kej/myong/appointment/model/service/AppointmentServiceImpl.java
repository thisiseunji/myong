package com.kej.myong.appointment.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kej.myong.appointment.model.dao.AppointmentDao;
import com.kej.myong.appointment.model.vo.Appointment;

@Service
public class AppointmentServiceImpl implements AppointmentService{

	@Autowired
	private AppointmentDao appointmentDao;
	
	@Autowired
	private SqlSessionTemplate sqlsession;
	
	@Override
	public ArrayList<Appointment> selectMemberListBySchedule(String schedule) {
		return appointmentDao.selectMemberListBySchedule(sqlsession, schedule);
	}

	@Override
	public void insertAppointment(Appointment appointment) {
		appointmentDao.insertAppointment(sqlsession, appointment);
	}

}
