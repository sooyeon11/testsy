
package com.testest.ex00;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.dto.ReplyDTO;
import com.test.service.ReplyService;

@Controller
public class ReplyController {

	@Autowired
	private ReplyService replyService;
	
	// 댓글 작성
	@RequestMapping(value = "replywrite", method = RequestMethod.POST)
	public String posttWirte(ReplyDTO dto, int mb_id, String mbre_content) {
		ReplyDTO replyDTO = new ReplyDTO();
		replyDTO.setMbre_content(mbre_content);
		replyDTO.setMb_id(mb_id);
		System.out.println(mb_id + mbre_content);
		
		replyService.write(dto);
		String redirect_url = "redirect:detailReviewPage?mb_id="+Integer.toString(mb_id);
		return redirect_url;
	}
	
	 //댓글 수정
    @RequestMapping("reply_update.do")    //세부적인 url pattern
    public String replyupdate (int mbre_id, String mbre_content, String m_id, int curPage, 
    		String search_option, String keyword, int mb_id, ReplyDTO dto) {
        
        dto.setMbre_id(mbre_id);
        dto.setMbre_content(mbre_content);
        dto.setM_id(m_id);
        
        System.out.println("dto에 있는값들 출력함"+dto);
 
        replyService.update(dto);
        
        
        return "forward:detailReviewPage";
    }
    
    //댓글 삭제
    @RequestMapping(value = "reply_delete.do" , method = {RequestMethod.GET, RequestMethod.POST} ) //세부적인 url pattern
    public String replydelete (int mbre_id, ReplyDTO dto, int mb_id, int curPage, String search_option, String keyword) {
        
        //파라미터로 받는 값은 자동적으로 String타입으로 변환되기 때문에 int타입으로 변환해주어야 한다.
 
    	replyService.delete(mbre_id);
        
        
        return "forward:detailReviewPage";
        
    }
	@ResponseBody
    @RequestMapping(value = "ReplyUpdate", method = RequestMethod.POST)
    public String replyupdate(HttpServletRequest request,HttpServletResponse response) {
		String mbre_content = request.getParameter("mbre_content");
		if(mbre_content!=null) {
			System.out.println(mbre_content);			
		}
		return "";
	}
}
