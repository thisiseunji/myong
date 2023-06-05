package com.kej.myong.chat;

import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.google.gson.Gson;
import com.kej.myong.chat.model.service.ChatService;
import com.kej.myong.chat.model.vo.ChatMsg;
import com.kej.myong.chat.model.vo.ChatRoom;

import lombok.RequiredArgsConstructor;


// 웹소켓 클라이언트로부터 메시지를 전달받아  chatMessage 객체로 변환
// 전달받은 chatMessage 객체에 있는 roomNo로 발송 대상 채팅방 정보를 조회
// 해당 채팅방에 입장해 있는 모든 클라이언트 => Set<WebSocketSession> 접속해있는 session에 모든 메시지를 전송

@Component
@RequiredArgsConstructor
public class ChatHandler extends TextWebSocketHandler{
	
	private final ChatService chatService;
	private final Gson gson = new Gson();
	
	@Override
    public void afterConnectionEstablished(WebSocketSession session) {
		System.out.println("웹소켓 연결됨");
	}
	
	@Override
	public void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		// 메시지를 저장된 모든 사용자에게 전송(사용자 수 만큼 반복하여 전송)
		
		String payload = message.getPayload();
		System.out.println("pl : " + payload);
		ChatMsg chatMsg = gson.fromJson(payload, ChatMsg.class);
		System.out.println("chatMsg : " + chatMsg); // 클래스로 잘 변환됨.
		System.out.println("chatMsg.getChatRoomNo() : "+ chatMsg.getChatRoomNo());
		ChatRoom chatRoom = chatService.findByNo(chatMsg.getChatRoomNo());
		System.out.println("chatRoom : " + chatRoom.toString());
		
		chatRoom.handleActions(session, chatMsg, chatService);
	}
	
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		System.out.println("웹소켓 연결 안됨");
	}

}
