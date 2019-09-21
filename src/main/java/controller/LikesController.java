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

import bean.Likes;
import bean.ResponseResult;
import bean.User;
import bean.Weibo;
import service.ILikesService;
import service.WeiboService;

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
	
	@Resource
	WeiboService weiboService;
	
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
	
	@RequestMapping("/showMyLike")
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
		//查询当前用户所有的点赞
		Integer[] collects = likesService.selectAllLikes(userId);
		// 总点赞微博数
		Integer count = collects.length;
		//存放所有的点赞
		List<Weibo> allCollects = new ArrayList<Weibo>();
		// 一页上显示10个，总共几页
		int pageSize = count % 10 == 0 ? count / 10 : count / 10 + 1;
		//当前页有几个
		int haveMany = page==pageSize? pageSize*10-count:10;
		int j = 0;
		if(pageSize == 1 && count != 0){
			haveMany = 10;
		}
		for(int i=offset; i<count; i++){
			Weibo allWeibo = weiboService.selectByWeiboId(collects[i], 0,10);
			//必须加此判断否则若是删除了微博，就会存入空对象导致下面出差错
			if(allWeibo != null && j<haveMany){
				j++;
				allCollects.add(allWeibo);
			}
		}
		log.info(allCollects.size());
		for (int i = 0; i < allCollects.size(); i++) {
			// 是否原创
			Integer repostId = allCollects.get(i).getRepostId();
			Weibo repost = weiboService.selectByWeiboId(repostId, 0, 10);
			allCollects.get(i).setRepost(repost);
		}
		log.info("所有点赞");
		count = allCollects.size();
		map.addAttribute("all", allCollects);
		// 将页数和总数和当前页面放进session中
		map.addAttribute("count", count);
		map.addAttribute("pageSize", pageSize);
		map.addAttribute("curpage", page);
		map.addAttribute("wz", "showOne.do");
		return "myLikes";
	}
}
