package controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import bean.Comment;
import bean.ResponseResult;
import service.CommentService;

/**
 * t_comment 评论
 * @author nanshoudabaojian
 *
 */
@RequestMapping("/weibo")
@Controller
public class CommentController {

	@Resource
	private CommentService commentService;
	
	@RequestMapping("/postComment.do")
	@ResponseBody
	public boolean postComment(Comment comment){
		commentService.postComment(comment);
		return true;
	}
	
	@RequestMapping("/showComments.do")
	@ResponseBody
	public ResponseResult<List<Comment>> selectAll(ModelMap map, Integer weiboId){
		List<Comment> allComments = commentService.selectAll(weiboId);
		map.addAttribute("allComments", allComments);
		ResponseResult<List<Comment>> rr = null;
		if(allComments.size() < 1){
			rr =  new ResponseResult<List<Comment>>(1,"查询成功");
		}else{
			rr =  new ResponseResult<List<Comment>>(1,"查询成功", allComments);
		}
		return rr;
	}
	
	//单行删除
	@RequestMapping("/removeById.do")
	public String deleteComment(Integer weiboId){
		commentService.deleteComment(weiboId);
		return "redirect:../weibo/showOne.do";
	}
	
}
