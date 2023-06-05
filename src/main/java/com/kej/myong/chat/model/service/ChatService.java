package com.kej.myong.chat.model.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.annotation.PostConstruct;

import org.springframework.stereotype.Service;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;

import com.google.gson.Gson;
import com.kej.myong.chat.model.vo.ChatRoom;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ChatService {
	
	int cnt = 0;
	
	private final Gson GSON = new Gson();	
	private Map<String, ChatRoom> chatRooms; // 전체 채팅방 
	
	@PostConstruct
	private void init() {
		chatRooms = new LinkedHashMap<>();
	}
	
	public ArrayList<ChatRoom> findAllRoom() {
		return new ArrayList<>(chatRooms.values());
	}
	
	public ChatRoom findByNo(int chatRoomNo) {
		return chatRooms.get(chatRoomNo+"");
	}
	
	public ChatRoom createChatRoom() {
		// 방 만들때, 식별되는 값으로 생기도록 일단 임시로.
		ChatRoom chatRoom = new ChatRoom(++cnt);
		System.out.println("cnt : " + cnt);
		System.out.println("room created");
		chatRooms.put(cnt+"", chatRoom);
		return chatRoom;
	}
	
	public <T> void sendMessage(WebSocketSession session, T chatMsg) {
		try {
			session.sendMessage(new TextMessage(GSON.toJson(chatMsg)));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
