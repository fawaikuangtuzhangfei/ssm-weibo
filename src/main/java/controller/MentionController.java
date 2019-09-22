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

import bean.Likes;
import bean.Mention;
import bean.ResponseResult;
import bean.User;
import service.ILikesService;
import service.IMentionService;
import service.IRelationService;
import service.IUserService;
import service.WeiboService;

/**
 * t_ralation 关注列表的控制器
 * 
 * @author nanshoudabaojian
 *
 */
@Controller
@RequestMapping("/mention")
public class MentionController {

	public final Logger log = Logger.getLogger(this.getClass());

	@Resource
	private WeiboService weiboService;// 微博

	@Resource
	private IUserService userService; // 用户

	@Resource
	private IRelationService relationService;// 关注
	
	@Resource
	private IMentionService mentionService;// 关注
	
	@Resource
	private ILikesService likesService;// 点赞
	
	@RequestMapping("/getNotice.do")
	@ResponseBody
	public ResponseResult<Mention> getNotice(HttpServletRequest request){
		ResponseResult<Mention> rr = null;
		
		// 从session中取出user ->取出userId
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		Integer userId = user.getId();
		
		// 获取到当前mention的全部差值信息
		Mention mention = mentionService.selectByUserId(userId);
		
		// 超时时间
		int maxTime = 0;

		while (true) {

			try {
				Thread.sleep(3000); 
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
			maxTime++;
			if (maxTime == 1) {//让他x*3秒刷新一次
				break;
			}

		}
		
		
		log.info(mention);
		rr = new ResponseResult<Mention>(1, "查询成功", mention);
		return rr;
	}
	
	/**
	 * 跳转到我收到的赞页面 ->同时修改mention中的赞的数量
	 * @param request
	 * @param map
	 * @param page
	 * @return
	 */
	@RequestMapping("/showLiked")
	public String showAllLiked(HttpServletRequest request, ModelMap map, Integer page) {
		// 默认为当前页
		if (page == null) {
			page = 1;
		}
		// 一页展示10个 当前是第几个
		Integer offset = (page - 1) * 10;
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		Integer userId = user.getId();
		
		// 查询当前用户被哪些人点赞了->个人信息+简短微博信息
		List<Likes> likesList = likesService.selectAllBy(userId);
		
		// 总点赞微博数
		Integer count = likesList.size();
		// 一页上显示10个，总共几页
		int pageSize = count % 10 == 0 ? count / 10 : count / 10 + 1;
		// 当前页有几个
		int haveMany = page == pageSize ? pageSize * 10 - count : 10;
		int j = 0;
		if (pageSize == 1) {
			haveMany = 10;
		}
		//当前页上显示多少个
		List<Likes> pages = likesService.selectAllBy(userId);
		for(int i=offset; i<count; i++){
			pages.add(likesList.get(i));
			j++;
			if(j<haveMany){
				break;
			}
		}
		
		
		// 获取到当前mention的全部差值信息
		List<Likes> likes = likesService.selectAllBy(userId);
		//目前的点赞数目
		Integer likeCount = likes.size();
		//修改mention中的likecount
		mentionService.updateLikes(userId, likeCount);

		map.addAttribute("likesList", likesList);
		// 将页数和总数和当前页面放进session中
		map.addAttribute("count", count);
		map.addAttribute("pageSize", pageSize);
		map.addAttribute("curpage", page);
		map.addAttribute("wz", "showOne.do");
		return "LikePage";
	}


}
