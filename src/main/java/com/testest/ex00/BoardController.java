package com.testest.ex00;

import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.activation.CommandMap;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.test.dto.boardDTO;
import com.test.service.boardService;

@Controller
public class BoardController {

	@Autowired
	boardService boardService;

	@RequestMapping(value = "board", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {

		return "board/wirteReview"; // 글쓰기 예시
	}

	@RequestMapping(value = "reviewwrite.do", method = RequestMethod.POST)
	public String insertReview(HttpServletRequest requset) {
		int idx = Integer.parseInt(requset.getParameter("idx"));
		String id = requset.getParameter("id");
		String title = requset.getParameter("title");
		String content = requset.getParameter("content");
		String img = requset.getParameter("img");
		int hit = Integer.parseInt(requset.getParameter("hit"));
		String regidate = "sysdate";

		int num = boardService.insertReview(new boardDTO(idx, id, title, content, img, hit, regidate));

		// 1 성공
		// 0 실패
		requset.setAttribute("ok", num);

		return "board/showReview"; // 상세 페이지 예시

	}

	@RequestMapping(value = "listReview")
	public String list(Model model) {
		List<boardDTO> list = boardService.list();
		model.addAttribute("list", list);

		return "board/listReview"; // 목록 예시

	}

	@RequestMapping(value = "detailReview")
	public String getdetail(Model model, HttpServletRequest requset) {
		int idx = Integer.parseInt(requset.getParameter("idx"));
		boardDTO detail = boardService.detailboard(idx);
		model.addAttribute("detail", detail);

		return "board/detailReview"; // 상세보기 예시
	}

	@RequestMapping(value = "update", method = RequestMethod.GET)
	public String update(int idx, Model model) {
		System.out.println(idx);
		boardDTO detail = boardService.detailboard(idx);
		model.addAttribute("detail", detail);

		return "board/update";
	}

	
	@RequestMapping(value = "postupdate", method = RequestMethod.POST) 
	public String postupdate(boardDTO dto) { 
		boardService.update(dto);
		
		return "redirect:listReview"; 
	  }
	 
	@RequestMapping(value = "delete", method = RequestMethod.GET) 
	public String delete(int idx) { 
		boardService.delete(idx); 
		
		return "redirect:listReview"; 
	}

	@RequestMapping(value = "ReviewPage")
	public String Review(Model model) {
		List<boardDTO> list = boardService.list();
		model.addAttribute("list", list);

		return "board/ReviewPage"; // 목록 페이지 위드독
	}

	/*
	 * @RequestMapping("detailReviewPage") public String
	 * insertdetail(HttpServletRequest requset) { int idx =
	 * Integer.parseInt(requset.getParameter("idx")); String id =
	 * requset.getParameter("id"); String title = requset.getParameter("title");
	 * String content = requset.getParameter("content"); String img =
	 * requset.getParameter("img"); int hit =
	 * Integer.parseInt(requset.getParameter("hit")); String regidate =
	 * requset.getParameter("regidate");
	 * 
	 * int num = boardService.insertReview(new boardDTO(idx, id, title, content,
	 * img, hit, regidate)); requset.setAttribute("1", num);
	 * 
	 * return "board/detailReviewPage"; //상세 보기 페이지 위드독
	 * 
	 * }
	 */

}
