package com.kej.myong.utils;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

// 빈으로 등록
@Component
public class FileSaver {
	
	// 저장경로
	private final String FILE_DIR_PATH = "/resources/img/";
	private final String REVIEW = "review_upfiles/";
	private final String STYLE = "style_upfiles/"; 
	
	// 저장 할 파일 이름 구성
	private String createStoreFilename(String originalFilename) {
		String uuid = UUID.randomUUID().toString();
		String storeFilename = uuid + "_" + originalFilename ;
		return storeFilename;
	}
	
	// 파일 저장 경로 구성 
	private String createFilePath(String storeFilename, String fileFor) {
		String viaPath = fileFor.equals("review") ? REVIEW : STYLE;
		
		return FILE_DIR_PATH + viaPath + storeFilename;
	}
	
	// 실제 파일 저장
	public String storeFile(MultipartFile multipartFile, String fileFor) {
		
	    if (multipartFile.isEmpty()) {
	        return null;
	    }
	    
	    String originalFilename = multipartFile.getOriginalFilename();
	    String storeFilename = createStoreFilename(originalFilename);
	    String filePath = createFilePath(storeFilename, fileFor);
	    try {
			multipartFile.transferTo(new File(filePath));
		} catch (IOException e) {
			e.printStackTrace();
			return fileFor +" 파일생성 오류";
		}
	    
		return filePath;
	}
}
