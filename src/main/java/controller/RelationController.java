package controller;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import bean.Relation;
import bean.ResponseResult;
import service.IRelationService;
import service.WeiboService;

/**
 * t_ralation
 * 关注列表的控制器
 * @author nanshoudabaojian
 *
 */
@Controller
@RequestMapping("/relation")
public class RelationController {

	public final Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	WeiboService weiboService;
	
	@Resource
	private IRelationService relationService;
	
	@RequestMapping("/follow")
	@ResponseBody
	public ResponseResult<Void> follow(Integer userId, Integer followId){
		log.info("关注成功:userId=" + userId + ",followId=" + followId); 
		ResponseResult<Void> rr = new ResponseResult<Void>(1, "关注成功");
		Relation relation = new Relation();
		relation.setFollowId(followId);
		relation.setUserId(userId);
		relationService.relation(relation);
		return rr;
	}
	
	@RequestMapping("/defollow")
	@ResponseBody
	public ResponseResult<Void> deFollow(Integer userId, Integer followId){
		log.info("取消关注成功:userId=" + userId + ",followId=" + followId); 
		ResponseResult<Void> rr = new ResponseResult<Void>(1, "取消关注成功");
		Relation relation = new Relation();
		relation.setFollowId(followId);
		relation.setUserId(userId);
		relationService.deRelation(relation);
		return rr;
	}
	
	@RequestMapping("/selectIsFollow")
	@ResponseBody
	public ResponseResult<Integer> selectIsFollow(Integer userId, Integer followId){
		log.info("加载页面关注selectIsFollow:userId=" + userId + ",followId=" + followId); 
		ResponseResult<Integer> rr = null;
		Integer count = relationService.selectIsFollow(userId, followId);
		if(count != null){
			if(count == 1){
				rr = new ResponseResult<Integer>(1, "已关注");
			}else{
				rr = new ResponseResult<Integer>(2, "相互关注");
			}
		}else{
			rr = new ResponseResult<Integer>(0, "未关注");
		}
		return rr;
	}
	
}
