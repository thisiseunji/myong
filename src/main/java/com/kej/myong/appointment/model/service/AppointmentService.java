package com.kej.myong.appointment.model.service;

import java.util.ArrayList;

import com.kej.myong.appointment.model.vo.Appointment;
import com.kej.myong.customer.vo.Customer;

public interface AppointmentService {

	ArrayList<Appointment> selectMemberListBySchedule(String schedule);

	void insertAppointment(Appointment appointment);

	ArrayList<Appointment> selectAppointmentByCustomer(Customer customer);

}
