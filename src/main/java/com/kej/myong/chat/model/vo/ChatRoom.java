package com.kej.myong.chat.model.vo;

import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

import org.springframework.web.socket.WebSocketSession;

import com.kej.myong.chat.model.service.ChatService;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;


// 접속한 세션을 모두 저장해야함
// 채팅방에  입장 / 통신 기능이 있으므로 handlerAction을 통해 분기처리
// 룸 id가 다르면, 새로운 생성방이 생기는거야?
// 입장시, session 정보 리스트에 클라이언트 session 정보를 추가해놓고 채팅방에 메시지 도착할 경우 채팅방의 모든 session에 메시지를 발송
// 근데 알림은 어떻게 줘?
@Getter
@Setter
public class ChatRoom {
	private int chatRoomNo;
	private Set<WebSocketSession> sessions = new CopyOnWriteArraySet<WebSocketSession>();
	
	public ChatRoom(int chatRoomNo) {
		super();
		this.chatRoomNo = chatRoomNo;
	}
	
	public void handleActions(WebSocketSession session, ChatMsg chatMsg, ChatService chatService) {
		if(chatMsg.getMsgType().equals(ChatMsg.MsgType.ENTER)) {
			sessions.add(session);
			System.out.println("chatRoom sessions : " + sessions.toString());
			chatMsg.setContent(chatMsg.getCustomerNo()+ "님이 입장했습니다~!");
			
		}
		sendMessage(chatMsg, chatService);
	}
	
	public <T> void sendMessage(T chatMsg, ChatService chatService) {
		for (WebSocketSession s : sessions) {
			chatService.sendMessage(s, chatMsg);
		}
	}
}


