package com.kej.myong.utils;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

// 빈으로 등록
@Component
public class FileSaver {
	
	// 저장경로
	// private final String FILE_DIR_PATH = "/resources/img/";
	private final String REVIEW = "/resources/img/review_upfiles/";
	private final String STYLE = "/resources/img/style_upfiles/"; 
	
	// 저장 할 파일 이름 구성
	private String createStoreFilename(String originalFilename) {
		String uuid = UUID.randomUUID().toString();
		String storeFilename = uuid + "_" + originalFilename ;
		return storeFilename;
	}
	
	// 파일 저장 경로 구성 
	private String createFilePath(String fileFor, HttpSession session) {
		String viaPath = fileFor.equals("review") ? REVIEW : STYLE;
		
		return session.getServletContext().getRealPath(viaPath);
	}
	
	// 실제 파일 저장
	public String storeFile(MultipartFile multipartFile, String fileFor, HttpSession session){
		
	    if (multipartFile.isEmpty()) {
	        return null;
	    }
	    
	    String originalFilename = multipartFile.getOriginalFilename();
	    String storeFilename = createStoreFilename(originalFilename);
	    String filePath = createFilePath(fileFor, session);

	    try {
			multipartFile.transferTo(new File(filePath, storeFilename));
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
	    
		return filePath;
	}
}
