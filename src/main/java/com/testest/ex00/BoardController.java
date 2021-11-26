package com.testest.ex00;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.dto.boardDTO;
import com.test.service.boardService;

@Controller
public class BoardController {
	
	@Autowired
	boardService boardService;
	
	@RequestMapping(value = "board", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "board/wirteReview";
	}
	
	@RequestMapping("reviewwrite.do")
	public String insertReview(HttpServletRequest requset) {
		String id = requset.getParameter("id");
		String title = requset.getParameter("title");
		String content = requset.getParameter("content");
		
		int num = boardService.insertReview(new boardDTO(id, title, content));
		requset.setAttribute("1", num);
		
		return "board/showReview";
		
	}
	
	
	@RequestMapping(value = "listReview") 
	public String list(Model model) {
		 List<boardDTO> list = boardService.list();
		 model.addAttribute("list", list);
		  
		return "board/listReview"; 
		
	}
	
	@RequestMapping(value = "ReviewPage")
	public String test(Model model) {
		List<boardDTO> list = boardService.list();
		model.addAttribute("list", list);
		
		return "board/ReviewPage";
	}
	 
}
