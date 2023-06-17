package com.kej.myong.admin.member.model.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class Member {
	private int memberNo;
	private String memberId;
	private String memberPwd;
	private String memberName;
	private String nickname;
	private String profileImg;
	private String position;
	private String title;
	private String subject;
	private String description;
	private String phone;
	private int chargeRate;
	private int dayOff;
	private Date startTime;
	private Date endTime;
	private Date effectiveDate;
	private String isDeleted;
}
