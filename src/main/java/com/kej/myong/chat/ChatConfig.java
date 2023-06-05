package com.kej.myong.chat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.socket.config.annotation.EnableWebSocket;
import org.springframework.web.socket.config.annotation.WebSocketConfigurer;
import org.springframework.web.socket.config.annotation.WebSocketHandlerRegistry;

import lombok.RequiredArgsConstructor;


@Configuration
@RequiredArgsConstructor
@EnableWebSocket
public class ChatConfig implements WebSocketConfigurer{
	
	@Autowired
    private final ChatHandler chatHandler;

	// 핸들러 등록
	@Override
	public void registerWebSocketHandlers(WebSocketHandlerRegistry registry) {
		 registry.addHandler(chatHandler, "/ws/chat").setAllowedOrigins("*");
	}
}
