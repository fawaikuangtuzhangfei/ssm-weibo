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
import org.springframework.web.bind.annotation.ResponseBody;

import bean.ResponseResult;
import bean.User;
import bean.Weibo;
import service.UserService;
import service.WeiboService;

/**
 * 微博控制器层
 * 
 * @author nanshoudabaojian
 *
 */
@RequestMapping("/weibo")
@Controller
public class WeiboController {

	public final Logger log = Logger.getLogger(this.getClass());
	@Resource
	WeiboService weiboService;

	@Resource
	UserService userService;

	// 发布微博/转发微博
	@RequestMapping("/post.do")
	@ResponseBody
	// 将form表单中的数据封装到weibo对象中
	// **存在问题，文件无法获取到，由于jsp页面中from表单传值的问题
	public ResponseResult<Weibo> post(Weibo weibo) {
		ResponseResult<Weibo> rr = new ResponseResult<Weibo>();
		weiboService.insertWeibo(weibo);
		return rr;
	}

	// 展示所有微博
	@RequestMapping("/show.do")
	public String showAll(ModelMap map, Integer page) {
		if (page == null) {
			page = 1;
		}
		Integer offset = (page - 1) * 10;
		List<Weibo> all = weiboService.selectAll(offset, 10);
		log.info("展示所有微博" + all.size());
		Integer count = weiboService.count();
		int pageSize = count % 10 == 0 ? count / 10 : count / 10 + 1;
		map.addAttribute("count", count);
		map.addAttribute("pageSize", pageSize);
		map.addAttribute("all", all);
		map.addAttribute("curpage", page);
		map.addAttribute("wz", "show.do");
		return "mine";
	}

	// 显示指定用户的微博->生硬的从session中取出了user对象进而取出了id
	@RequestMapping("/showOne.do")
	public String showById(ModelMap map, HttpServletRequest request, Integer page) {
		// 默认为当前页
		if (page == null) {
			page = 1;
		}
		// 一页展示10个 当前是第几个
		Integer offset = (page - 1) * 10;
		log.info("展示我的微博");
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		Integer userId = user.getId();
		// 分页查询
		List<Weibo> all = weiboService.selectById(userId, offset, 10);
		// 总微博数
		Integer count = weiboService.countByUser(userId);
		// 一页上显示10个，总共几页
		int pageSize = count % 10 == 0 ? count / 10 : count / 10 + 1;
		map.addAttribute("all", all);
		// 将页数和总数和当前页面放进session中
		map.addAttribute("count", count);
		map.addAttribute("pageSize", pageSize);
		map.addAttribute("curpage", page);
		map.addAttribute("wz", "showOne.do");
		return "mine";
	}

	// 显示指定用户的指定微博
	@RequestMapping("/selectByContent.do")
	public String showByContent(Integer page, ModelMap map, HttpServletRequest request,
			@RequestParam("userId") Integer userId, @RequestParam("content") String content) {
		// 默认为当前页
		if (page == null) {
			page = 1;
		}
		// 一页展示10个 当前是第几个
		Integer offset = (page - 1) * 10;

		List<Weibo> all = weiboService.selectByContent(userId, content, offset, 10);
		System.out.println("显示指定用户的微博" + all);
		// 总微博数
		Integer count = weiboService.countByUser(userId);
		// 一页上显示10个，总共几页
		int pageSize = count % 10 == 0 ? count / 10 : count / 10 + 1;
		map.addAttribute("all", all);
		// 将页数和总数和当前页面放进session中
		map.addAttribute("count", count);
		map.addAttribute("pageSize", pageSize);
		map.addAttribute("curpage", page);
		map.addAttribute("wz", "selectByContent.do");
		return "mine";
	}
}
