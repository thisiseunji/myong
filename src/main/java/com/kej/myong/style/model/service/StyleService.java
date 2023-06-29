package com.kej.myong.style.model.service;

import java.util.ArrayList;

import com.kej.myong.style.model.vo.Style;

public interface StyleService {

	ArrayList<Style> selectStyleList(Style style);

	ArrayList<String> selectDivision2ListAsDivision1(String division1);

}
