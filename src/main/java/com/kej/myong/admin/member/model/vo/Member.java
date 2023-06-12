package com.kej.myong.admin.member.model.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class Member {
	int memberNo;
	String memberId;
	String memberPwd;
	String memberName;
	String nickname;
	String profileImg;
	String position;
	String title;
	String subject;
	String description;
	String phone;
	int chargeRate;
	int dayOff;
	Date startTime;
	Date endTime;
	Date effectiveDate;
	String isDeleted;
}
