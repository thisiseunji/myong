package com.kej.myong.style.model.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Style {
	private int styleNo;
	private String styleName;
	private String description;
	private int minute;
	private String gender;
	private String division1;
	private String division2;
	private String division3;
	private int basicPrice;
	private String img1;
	private String img2;
	private String img3;
	private String isDeleted;
	
	// 정렬기준
	private String orderBy; 
}
