package controller;


import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import bean.Reply;
import service.IReplyService;

/**
 * t_reply 回复
 * @author nanshoudabaojian
 *
 */
@Controller
@RequestMapping("/reply")
public class ReplyController {
	
	@Resource
	private IReplyService replyService;

	@RequestMapping("/insert.do")
	@ResponseBody
	public void addReply(@RequestBody Reply reply){
		replyService.insertReply(reply);
	}
	
	@RequestMapping("/deleteReply.do")
	@ResponseBody
	public void deleteReply(Integer replyId){
		replyService.deleteReply(replyId);
	}
}
