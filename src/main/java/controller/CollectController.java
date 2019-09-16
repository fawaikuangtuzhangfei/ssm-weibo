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
	WeiboService weiboService;
	
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
		//存放所有的收藏
		List<Weibo> allCollects = new ArrayList<Weibo>();
		for(Integer weiboId : collects){
			log.info("当前用户收藏微博id=" + weiboId);
			Weibo allWeibo = weiboService.selectByWeiboId(weiboId, offset,10);
			allCollects.add(allWeibo);
		}
		// 总收藏微博数
		Integer count = allCollects.size();
		// 一页上显示10个，总共几页
		int pageSize = count % 10 == 0 ? count / 10 : count / 10 + 1;
		for (int i = 0; i < allCollects.size(); i++) {
			// 是否原创
			Integer repostId = allCollects.get(i).getRepostId();
			Weibo repost = weiboService.selectByWeiboId(repostId, offset, 10);
			allCollects.get(i).setRepost(repost);
		}
		log.info("所有收藏");
		System.out.println(allCollects);
		map.addAttribute("all", allCollects);
		// 将页数和总数和当前页面放进session中
		map.addAttribute("count", count);
		map.addAttribute("pageSize", pageSize);
		map.addAttribute("curpage", page);
		map.addAttribute("wz", "showOne.do");
		return "myCollection";
	}
}
