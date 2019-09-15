package controller;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import bean.Likes;
import bean.ResponseResult;
import service.ILikesService;

/**
 * t_likes 点赞controller
 * @author 77515
 *
 */
@Controller
@RequestMapping("/like")
public class LikesController {
	
	public final Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private ILikesService likesService;
	
	@RequestMapping("/selectByOne")
	@ResponseBody
	public ResponseResult<Integer> selectByOne(Integer userId, Integer weiboId, ModelMap map){
		Integer nowCount = likesService.selectCount(weiboId);
		map.addAttribute("nowCount", nowCount);
		Integer count = likesService.selctByUser(userId, weiboId);
		ResponseResult<Integer> rr = null;
		if(count >= 1){
			rr = new ResponseResult<Integer>(1, "已点赞", nowCount);
		}else{
			rr = new ResponseResult<Integer>(0, "未点赞", nowCount);
		}
		return rr;
	}
	
	@RequestMapping("/like")
	@ResponseBody
	public ResponseResult<Integer> collect(Integer userId, Integer weiboId){
		log.info("点赞开始");
		Likes like = new Likes();
		like.setUserId(userId);
		like.setWeiboId(weiboId);
		likesService.like(like);
		Integer nowCount = likesService.selectCount(weiboId);
		ResponseResult<Integer> rr = new ResponseResult<Integer>(1, "已点赞", nowCount);
		log.info("点赞成功");
		return rr;
	}
	
	@RequestMapping("/delike")
	@ResponseBody
	public ResponseResult<Integer> decollect(Integer userId, Integer weiboId){
		log.info("取消点赞");
		Likes like = new Likes();
		like.setUserId(userId);
		like.setWeiboId(weiboId);
		likesService.delike(like);
		Integer nowCount = likesService.selectCount(weiboId);
		ResponseResult<Integer> rr = new ResponseResult<Integer>(1, "点赞", nowCount);
		log.info("取消点赞成功");
		return rr;
	}
	
	
}