package com.kej.myong.chat;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kej.myong.chat.model.service.ChatService;
import com.kej.myong.chat.model.vo.ChatRoom;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
@RequestMapping(value="/chat", produces = "application/json;charset=UTF-8")
public class ChatController {
	
	@Autowired
	private final ChatService chatService;
	
	// 메시지 보내기 
	@PostMapping
	public ChatRoom createChatRoom() {
		return chatService.createChatRoom();
	}
	
	// 모든 채팅방 리스트
	@GetMapping
	public List<ChatRoom> findAllRoom() {
		return chatService.findAllRoom();
	}
}
