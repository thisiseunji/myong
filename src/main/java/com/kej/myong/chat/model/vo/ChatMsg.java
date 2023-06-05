package com.kej.myong.chat.model.vo;

import lombok.Data;

@Data
public class ChatMsg {
	
	public enum MsgType {
		ENTER, COMM
	}
	
	private MsgType msgType;
	private int chatRoomNo;
	private int customerNo;
	private int memberNo;
	private String content;

}
