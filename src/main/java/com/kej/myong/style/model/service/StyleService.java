package com.kej.myong.style.model.service;

import java.util.ArrayList;

import com.kej.myong.style.model.vo.Style;
import com.kej.myong.utils.model.vo.PageInfo;

public interface StyleService {

	ArrayList<String> selectDivision2ListAsDivision1(String division1);

	int selectListCountAsDivisions(Style style);

	ArrayList<Style> selectStyleListAsDivisions(PageInfo pi, Style style);

}
