package controller;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import bean.Collect;
import bean.ResponseResult;
import service.ICollectService;

/**
 * t_collect 收藏controller
 * @author 77515
 *
 */
@Controller
@RequestMapping("/collect")
public class CollectController {
	
	public final Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private ICollectService collectService;
	
	@RequestMapping("/selectByOne")
	@ResponseBody
	public ResponseResult<Integer> selectByOne(Integer userId, Integer weiboId){
		Integer count = collectService.selctByUser(userId, weiboId);
		ResponseResult<Integer> rr = null;
		if(count >= 1){
			rr = new ResponseResult<Integer>(1, "已收藏");
		}else{
			rr = new ResponseResult<Integer>(0, "未收藏");
		}
		return rr;
	}
	
	@RequestMapping("/collect")
	@ResponseBody
	public ResponseResult<Void> collect(Integer userId, Integer weiboId){
		log.info("开始收藏");
		Collect collect = new Collect();
		collect.setUserId(userId);
		collect.setWeiboId(weiboId);
		collectService.collect(collect);
		ResponseResult<Void> rr = new ResponseResult<Void>(1, "已收藏");
		log.info("收藏成功");
		return rr;
	}
	
	@RequestMapping("/decollect")
	@ResponseBody
	public ResponseResult<Void> decollect(Integer userId, Integer weiboId){
		log.info("取消收藏");
		Collect collect = new Collect();
		collect.setUserId(userId);
		collect.setWeiboId(weiboId);
		collectService.decollect(collect);
		ResponseResult<Void> rr = new ResponseResult<Void>(1, "收藏");
		log.info("取消收藏成功");
		return rr;
	}
}
