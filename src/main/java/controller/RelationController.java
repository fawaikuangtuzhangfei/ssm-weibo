package controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import bean.Relation;
import bean.ResponseResult;
import bean.User;
import bean.Weibo;
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
	
	//好友圈
	@RequestMapping("/showMyFriends")
	public String showAll(HttpServletRequest request, ModelMap map, Integer page){
		log.info("我的好友圈!");
		// 默认为当前页
		if (page == null) {
			page = 1;
		}
		// 一页展示10个 当前是第几个
		Integer offset = (page - 1) * 10;
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		Integer userId = user.getId();
		//查询当前用户所有的关注
		Integer[] follows = relationService.selectAll(userId);
		Integer[] f1 = {1};
		if(follows.length<=0){
			follows = f1;
		}
		// 所有关注人的总微博数量
		Integer count = weiboService.countMany(follows);
		//每页显示的微博数量-关注人的
		List<Weibo> allFriendsWeibo = weiboService.selectMany(follows, offset, 10);
		// 一页上显示10个，总共几页
		int pageSize = count % 10 == 0 ? count / 10 : count / 10 + 1;
		//本页上有几个
		for (int i = 0; i < allFriendsWeibo.size(); i++) {
			if(allFriendsWeibo.get(i) == null){
				break;
			}
			// 是否原创
			Integer repostId = allFriendsWeibo.get(i).getRepostId();
			Weibo repost = weiboService.selectByWeiboId(repostId, offset, 10);
			allFriendsWeibo.get(i).setRepost(repost);
		}
		map.addAttribute("all", allFriendsWeibo);
		// 将页数和总数和当前页面放进session中
		map.addAttribute("count", count);
		map.addAttribute("pageSize", pageSize);
		map.addAttribute("curpage", page);
		map.addAttribute("wz", "showMyFriends.do");
		return "myFriends";
	}
	
}
