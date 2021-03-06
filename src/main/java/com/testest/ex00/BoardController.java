package com.testest.ex00;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.activation.CommandMap;
import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.test.dto.Pagination;
import com.test.dto.ReplyDTO;
import com.test.dto.boardDTO;
import com.test.service.ReplyService;
import com.test.service.boardService;
import com.test.utils.UploadFileUtils;

@Controller
public class BoardController {

	@Autowired
	private boardService boardService;
	
	
	@Autowired 
	private ReplyService replyService;
	 
	
	@Autowired 
	private boardDTO dto;
	
	@Resource(name="uploadPath")
	private String uploadPath;
	
	@RequestMapping(value = "writeReview", method = RequestMethod.GET)
	public String getwrite() throws Exception{
		return "board/writeReview";
	}
	
	@RequestMapping(value = "writeReviewpro", method = RequestMethod.POST)
	public String postwrite(boardDTO dto, MultipartFile file) throws Exception{
		String imgUploadPath = uploadPath + File.separator + "imgUpload";
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		String fileName = null;

		if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
			fileName =  UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath); 
		} else {
			fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
		}

		dto.setMb_img(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
		//dto.setGdsThumbImg(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
		boardService.write(dto);
		
		return "board/writeReviewpro";
	}
	
	@RequestMapping(value = "ReviewPage", method = RequestMethod.GET)
	public String list(Model model, int num) throws Exception {
		// ????????? ??? ??????
		 int count = boardService.count();
		  
		 // ??? ???????????? ????????? ????????? ??????
		 int postNum = num*6;
		  
		 // ?????? ????????? ?????? ([ ????????? ??? ?????? ?? ??? ???????????? ????????? ?????? ]??? ??????)
		 int pageNum = (int)Math.ceil((double)count/5);
		  
		 // ????????? ?????????
		 int displayPost = postNum-5;
		 
		//????????? ????????? ????????? ????????? ??????
		 int pageNum_cnt = 5;

		 //???????????? ????????? ?????? ??? ????????? ??????
		 int endPageNum = (int)(Math.ceil((double)num / (double)pageNum_cnt) * pageNum_cnt);
		  
		 //???????????? ????????? ?????? ??? ????????? ??????
		 int startPageNum = endPageNum - (pageNum_cnt - 1);

		 //????????? ?????? ?????????
		 int endPageNum_tmp = (int)(Math.ceil((double)count / (double)pageNum_cnt));

		 if(endPageNum > endPageNum_tmp) {
		 	 endPageNum = endPageNum_tmp;
		 	}

		 boolean prev = startPageNum == 1 ? false : true;
		 boolean next = endPageNum * pageNum_cnt >= count ? false : true;




		 List<boardDTO> list = null; 
		 list = boardService.listPage(displayPost, postNum);
		 model.addAttribute("list", list);   
		 model.addAttribute("pageNum", pageNum);

		 //?????? ??? ??? ??????
		 model.addAttribute("startPageNum", startPageNum);
		 model.addAttribute("endPageNum", endPageNum);

		 //?????? ??? ?????? 
		 model.addAttribute("prev", prev);
		 model.addAttribute("next", next);

		 //?????? ?????????
		 model.addAttribute("select", num);
			   
		return "board/ReviewPage"; // ?????? ????????? ?????????
	}
	
	@RequestMapping(value = "detailReviewPage")
	public String getdetail(Model model, HttpServletRequest request) throws Exception{

		int mb_id = Integer.parseInt(request.getParameter("mb_id"));
		boardDTO detail = boardService.detailboard(mb_id);
		model.addAttribute("detail", detail);
		
		// ?????? ??????
		List<ReplyDTO> reply = replyService.list(mb_id);
		model.addAttribute("reply", reply);

		return "board/detailReviewPage"; // ???????????? ?????????
	}
	
	@RequestMapping(value = "update", method = RequestMethod.GET)
	public String getupdate(HttpServletRequest request, Model model) {
		boardDTO detail = boardService.detailboard(Integer.parseInt(request.getParameter("mb_id")));
		model.addAttribute("detail", detail);

		return "board/update";
	}
	
	@RequestMapping(value = "updatePro", method = RequestMethod.POST) 
	public String postupdate(HttpServletRequest request){ 
		dto.setMb_id(Integer.parseInt(request.getParameter("mb_id")));
		dto.setM_id(request.getParameter("m_id"));
		dto.setMb_title(request.getParameter("mb_title"));
		dto.setMb_content(request.getParameter("mb_content"));
	//	dto.setImg(request.getParameter("mb_img"));
	//	dto.setH_id(request.getParameter("h_id"));
		dto.setMb_hit(Integer.parseInt(request.getParameter("mb_hit")));
		
		boardService.update(dto);

		return "board/updatePro"; 
	  }
	
	@RequestMapping(value = "delete", method = RequestMethod.GET) 
	public String delete(int mb_id) { 
		boardService.delete(mb_id); 
		
		return "redirect:ReviewPage";  //??????
	}

	/* ?????? ???????????????~
	@RequestMapping(value = "board", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {

		return "board/wirteReview"; // ????????? ??????
	}

	@RequestMapping(value = "reviewwrite.do", method = RequestMethod.POST)
	public String insertReview(HttpServletRequest request) {
		int idx = Integer.parseInt(request.getParameter("idx"));
		String id = request.getParameter("id");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String img = request.getParameter("img");
		int hit = Integer.parseInt(request.getParameter("hit"));
		String regidate = "sysdate";

		int num = boardService.insertReview(new boardDTO(idx, id, title, content, img, hit, regidate));

		// 1 ??????
		// 0 ??????
		request.setAttribute("ok", num);

		return "board/showReview"; // ?????? ????????? ??????

	}

	@RequestMapping(value = "listReview")
	public String list(Model model) {
		List<boardDTO> list = boardService.list();
		model.addAttribute("list", list);

		return "board/listReview"; // ?????? ??????

	}

	@RequestMapping(value = "detailReview")
	public String getdetail(Model model, HttpServletRequest request) {
		int idx = Integer.parseInt(request.getParameter("idx"));
		boardDTO detail = boardService.detailboard(idx);
		model.addAttribute("detail", detail);

		return "board/detailReview"; // ???????????? ??????
	}
	
	@RequestMapping(value = "update", method = RequestMethod.GET)
	public String getupdate(HttpServletRequest request, Model model) {
		boardDTO detail = boardService.detailboard(Integer.parseInt(request.getParameter("idx")));
		model.addAttribute("detail", detail);

		return "board/update";
	}
	
	@RequestMapping(value = "updatePro", method = RequestMethod.POST) 
	public String postupdate(HttpServletRequest request){ 
		dto.setIdx(Integer.parseInt(request.getParameter("idx")));
		dto.setId(request.getParameter("id"));
		dto.setTitle(request.getParameter("title"));
		dto.setContent(request.getParameter("content"));
	//	dto.setImg(request.getParameter("img"));
		dto.setHit(Integer.parseInt(request.getParameter("hit")));
		
		boardService.update(dto);

		return "board/updatePro"; 
	  }
	 
	@RequestMapping(value = "delete", method = RequestMethod.GET) 
	public String delete(int idx) { 
		boardService.delete(idx); 
		
		return "redirect:listReview"; 
	}
	*/

}
