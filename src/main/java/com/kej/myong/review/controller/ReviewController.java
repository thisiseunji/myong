package com.kej.myong.review.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.kej.myong.admin.member.model.vo.Member;
import com.kej.myong.review.model.service.ReviewService;
import com.kej.myong.review.model.vo.Review;
import com.kej.myong.utils.model.vo.PageInfo;
import com.kej.myong.utils.template.FileSaver;
import com.kej.myong.utils.template.Pagination;

@Controller
@RequestMapping("review")
public class ReviewController {
	
	@Autowired
	private ReviewService reviewService;
	
	@Autowired
	private FileSaver fileSaver;
	
	@GetMapping(produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String selectReviewList(@RequestParam(value="cPage", defaultValue="1") int currentPage, int memberNo) {
		
		// 페이징 처리
		int listCount = reviewService.selectListCount();
		
		int pageLimit = 10;
		int contentLimit = 5;
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, pageLimit, contentLimit);
		
		ArrayList<Review> list = reviewService.selectReview(pi, memberNo);
		
		return new Gson().toJson(list);
	}
	
	// 리뷰 작성
	@GetMapping("/write")
	public String reviewEnrollForm(){
		return "review/reviewEnrollForm";
		
	}

	@PostMapping(produces = "text/html; charset=utf-8", consumes = { MediaType.MULTIPART_FORM_DATA_VALUE })
	@ResponseBody
	public String insertReview(Review r, HttpSession session){
		
		MultipartFile multipartFile = r.getMultipartFile();
		
		// 이미지 첨부를 했을 경우
		if (multipartFile != null) {
			String filepath = fileSaver.storeFile(multipartFile, "review", session);
			if (filepath == null) {
				return "리뷰 등록 실패";
			} else {
				r.setReviewImg(filepath);
			}
		}
			
		int result = reviewService.insertReview(r);
		return result > 0? "리뷰 등록 성공" : "리뷰 등록 실패";
	}	
	
	@DeleteMapping
	@ResponseBody
	public String deleteReview(Review r, HttpSession session) {
		// 고객 정보가 있을 경우에만 요청되도록 해야하고, 고객정보와 리뷰 정보를 함께 넘겨줘야함.
		// 고객정보는 session에 있음. 해당 고객이 작성한 리뷰일 경우에만 삭제되록 해야함.
		// 관련 이미지?는 삭제할 필요 없겠다. -> 보관목적이 뭐냐에 따라서 
		int customerNo = (int)session.getAttribute("customerNo");
		r.setCustomerNo(customerNo);
		
		int result = reviewService.deleteReview(r);
		
		return result > 0? "리뷰 삭제 성공" : "리뷰 삭제 실패";
		
	}
}
