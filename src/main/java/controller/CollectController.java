package controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import bean.Collect;
import bean.ResponseResult;
import bean.User;
import bean.Weibo;
import service.ICollectService;
import service.IRelationService;
import service.WeiboService;

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
	WeiboService weiboService;// 微博
	
	@Resource
	private ICollectService collectService;// 收藏
	
	@Resource
	private IRelationService relationService;// 粉丝关注
	
	//是否被当前用户收藏
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
	
	//收藏
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
	
	//取消收藏
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
	
	//展示我的收藏列表
	@RequestMapping("/showMyCollect")
	public String showAll(HttpServletRequest request, ModelMap map, Integer page){
		// 默认为当前页
		if (page == null) {
			page = 1;
		}
		// 一页展示10个 当前是第几个
		Integer offset = (page - 1) * 10;
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		Integer userId = user.getId();
		//查询当前用户所有的收藏
		Integer[] collects = collectService.selectAll(userId);
		// 总收藏微博数
		Integer count = collects.length;
		// 一页上显示10个，总共几页
		int pageSize = count % 10 == 0 ? count / 10 : count / 10 + 1;
		//当前页有几个
		int haveMany = page==pageSize? pageSize*10-count:10;
		int j = 0;
		if(pageSize == 1){
			haveMany = 10;
		}
		//存放所有的收藏
		List<Weibo> allCollects = new ArrayList<Weibo>();
		for(int i=offset; i<count; i++){
			Weibo allWeibo = weiboService.selectByWeiboId(collects[i], 0,10);
			//必须加此判断否则若是删除了微博，就会存入空对象导致下面出差错
			if(allWeibo != null && j<haveMany){
				j++;
				allCollects.add(allWeibo);
			}
		}

		for (int i = 0; i < allCollects.size(); i++) {
			log.info("展示我的所有收藏开始");
			/*
			 * 原创微博的悬浮信息
			 */
			userId = allCollects.get(i).getUserId();
			// 把微博数量放进去
			Integer[] userIds = { userId };
			Integer countWeibo = weiboService.countMany(userIds);
			allCollects.get(i).setWeibos(countWeibo);
			// 把粉丝数量也存进去
			Integer[] fans = relationService.selectFans(userId);
			Integer fanCount = fans.length;
			allCollects.get(i).setFans(fanCount);
			// 把关注数量也存进去
			Integer[] follows = relationService.selectAll(userId);
			Integer followCount = follows.length;
			allCollects.get(i).setFollows(followCount);
			
			// 是否原创
			Integer repostId = allCollects.get(i).getRepostId();
			Weibo repost = weiboService.selectByWeiboId(repostId, 0, 10);
			
			/*
			 * 如果是非原创则将悬浮信息填充
			 */
			if(repost != null){
				userId = repost.getUserId();
				// 把微博数量放进去
				Integer[] userIds2 = { userId };
				countWeibo = weiboService.countMany(userIds2);
				repost.setWeibos(countWeibo);
				// 把粉丝数量也存进去
				fans = relationService.selectFans(userId);
				fanCount = fans.length;
				repost.setFans(fanCount);
				// 把关注数量也存进去
				follows = relationService.selectAll(userId);
				followCount = follows.length;
				repost.setFollows(followCount);	
			}
			
			allCollects.get(i).setRepost(repost);
		}
		//实际的收藏数量
		map.addAttribute("all", allCollects);
		// 将页数和总数和当前页面放进session中
		map.addAttribute("count", count);
		map.addAttribute("pageSize", pageSize);
		map.addAttribute("curpage", page);
		map.addAttribute("wz", "showOne.do");
		log.info("展示我的所有收藏完毕");
		return "myCollection";
	}
}
