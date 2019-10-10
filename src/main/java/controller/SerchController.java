package controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import bean.User;
import bean.Weibo;
import service.IRelationService;
import service.IUserService;
import service.WeiboService;

/**
 * 专门用于查询的controller
 * 
 * @author 77515
 *
 */
@Controller
@RequestMapping("/serch")
public class SerchController {

	public final Logger log = Logger.getLogger(this.getClass());

	@Resource
	private WeiboService weiboService;// 微博

	@Resource
	private IUserService userService;// 用户
	
	@Resource
	private IRelationService relationService;// 粉丝关注

	// 显示指定内容的微博
	@RequestMapping("/selectByContents.do")
	public String showByContent(Integer page, ModelMap map, HttpServletRequest request,
			@RequestParam("content") String content) {
		log.info("要搜的内容是:" + content + ",当前页数:" + page);
		// 默认为当前页
		if (page == null) {
			page = 1;
		}
		// 一页展示10个 当前是第几个
		Integer offset = (page - 1) * 10;
		// 有多少个符合条件的查询结果
		Integer count = weiboService.selectByContentsNoPage(content);

		List<Weibo> all = weiboService.selectByContentS(content, offset, 10);

		// 一页上显示10个，总共几页
		int pageSize = count % 10 == 0 ? count / 10 : count / 10 + 1;
		// 存放所有转发的微博
		for (int i = 0; i < all.size(); i++) {
			// 是否原创
			Integer repostId = all.get(i).getRepostId();
			Weibo repost = weiboService.selectByWeiboId(repostId, 0, 10);

			all.get(i).setRepost(repost);
		}
		map.addAttribute("all", all);
		// 将页数和总数和当前页面放进session中
		map.addAttribute("count", count);
		map.addAttribute("pageSize", pageSize);
		map.addAttribute("curpage", page);
		map.addAttribute("wz", "../serch/selectByContents.do?content=" + content + "&");
		return "now";
	}

	// 前往我的微博主页 ->找人
	@RequestMapping("/showOne.do")
	public String showById(ModelMap map, HttpServletRequest request, Integer page, String username) {
		// 默认为当前页
		if (page == null) {
			page = 1;
		}
		// 一页展示10个 当前是第几个
		Integer offset = (page - 1) * 10;
		// 存放用户
		User user = userService.selectByUsername(username);
		if (user == null) {
			return "forward:../serch/show404.do";
		}
		Integer userId = user.getId();
		// 分页查询
		List<Weibo> all = weiboService.selectById(userId, offset, 10);
		map.addAttribute("usernow", user);
		// 总微博数
		Integer count = weiboService.countByUser(userId);
		// 一页上显示10个，总共几页
		int pageSize = count % 10 == 0 ? count / 10 : count / 10 + 1;
		for (int i = 0; i < all.size(); i++) {
			// 是否原创
			Integer repostId = all.get(i).getRepostId();
			Weibo repost = weiboService.selectByWeiboId(repostId, 0, 10);
			all.get(i).setRepost(repost);
		}
		map.addAttribute("all", all);
		// 把微博数量放进map中去
		Integer[] userIds = { userId };
		Integer countWeibo = weiboService.countMany(userIds);
		map.addAttribute("nowWeiboCount", countWeibo);
		// 把粉丝数量也存进去
		Integer[] fans = relationService.selectFans(userId);
		Integer fanCount = fans.length;
		map.addAttribute("nowFansCount", fanCount);
		// 把关注数量也存进去
		Integer[] follows = relationService.selectAll(userId);
		Integer followCount = follows.length;
		map.addAttribute("nowFollowCount", followCount);
		log.info(all);
		// 将页数和总数和当前页面放进session中
		map.addAttribute("count", count);
		map.addAttribute("pageSize", pageSize);
		map.addAttribute("curpage", page);
		map.addAttribute("wz", "showOne.do?userId=" + userId);
		return "myWeibo";
	}

	// 显示查找失败页面
	@RequestMapping("/show404.do")
	public String showLogin(HttpSession session) {
		User user = (User) session.getAttribute("user");
		session.setAttribute("user", user);
		return "user404";
	}

	// 查询当前用户共有多少条微博
	@RequestMapping("/countWeibo.do")
	public void countWeibo(ModelMap map, Integer userId) {
		Integer[] userIds = { userId };
		Integer countWeibo = weiboService.countMany(userIds);
		map.addAttribute("countWeibo", countWeibo);
	}

}
