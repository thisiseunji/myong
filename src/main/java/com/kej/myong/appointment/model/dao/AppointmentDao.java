package com.kej.myong.appointment.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kej.myong.appointment.model.vo.Appointment;

@Repository
public class AppointmentDao {

	public ArrayList<Appointment> selectMemberListBySchedule(SqlSessionTemplate sqlsession, String schedule) {
		return (ArrayList)sqlsession.selectList("memberMapper.selectMemberListBySchedule", schedule);
	}

}
