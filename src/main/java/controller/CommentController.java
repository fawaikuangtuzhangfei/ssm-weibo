package controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import bean.Comment;
import bean.Reply;
import bean.ResponseResult;
import service.CommentService;
import service.IReplyService;

/**
 * t_comment 评论
 * @author nanshoudabaojian
 *
 */
@RequestMapping("/weibo")
@Controller
public class CommentController {

	@Resource
	private CommentService commentService; //评论
	
	@Resource
	private IReplyService replyService; //回复
	
	//发布评论
	@RequestMapping("/postComment.do")
	@ResponseBody
	public boolean postComment(Comment comment){
		commentService.postComment(comment);
		return true;
	}
	
	//展示评论
	@RequestMapping("/showComments.do")
	@ResponseBody
	public ResponseResult<List<Comment>> selectAll(ModelMap map, Integer weiboId){
		List<Comment> allComments = commentService.selectAll(weiboId);
		map.addAttribute("allComments", allComments);
		// 查询该条微博下有多少条评论
		for(int i=0; i<allComments.size(); i++){
			List<Reply> replys = replyService.selectAllReply(allComments.get(i).getCommentId());
			allComments.get(i).setCountReply(replys.size());
		}
		ResponseResult<List<Comment>> rr = null;
		System.out.println(allComments);
		if(allComments.size() < 1){
			rr =  new ResponseResult<List<Comment>>(1,"查询成功");
		}else{
			rr =  new ResponseResult<List<Comment>>(1,"查询成功", allComments);
		}
		return rr;
	}
	
	//单行删除
	@RequestMapping("/removeById.do")
	@ResponseBody
	public void deleteComment(Integer weiboId){
		commentService.deleteComment(weiboId);
	}
	
	//查看拥有多少评论数量
	@RequestMapping("/countComments.do")
	@ResponseBody
	public ResponseResult<Integer> countComments(Integer weiboId){
		Integer count = commentService.countComments(weiboId);
		ResponseResult<Integer> rr = new ResponseResult<Integer>(count, "查询成功");
		return rr;
	}
	
}
