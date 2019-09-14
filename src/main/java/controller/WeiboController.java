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
	
	//发布微博/转发微博
	@RequestMapping("/post.do")
	@ResponseBody
	//将form表单中的数据封装到weibo对象中
	//**存在问题，文件无法获取到，由于jsp页面中from表单传值的问题
	public ResponseResult<Weibo> post(Weibo weibo){
		ResponseResult<Weibo> rr = new ResponseResult<Weibo>();
		weiboService.insertWeibo(weibo);
		return rr;
	}
	
	//展示所有微博
	@RequestMapping("/show.do")
	public String showAll(ModelMap map){
		log.info("展示所有微博");
		List<Weibo> all = weiboService.selectAll();
		map.addAttribute("all", all);
		return "mine";
	}
	
	//显示指定用户的微博->生硬的从session中取出了user对象进而取出了id
	@RequestMapping("/showOne.do")
	public String showById(ModelMap map, HttpServletRequest request){
		log.info("展示我的微博");
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		Integer userId = user.getId();
		List<Weibo> all = weiboService.selectById(userId);
		map.addAttribute("all", all);
		return "mine";
	}
	
	//显示指定用户的指定微博
	@RequestMapping("/selectByContent.do")
	public String showByContent(ModelMap map, HttpServletRequest request,@RequestParam("userId") Integer userId, @RequestParam("content") String content){
		List<Weibo> all = weiboService.selectByContent(userId, content);
		System.out.println("显示指定用户的微博" + all);
		map.addAttribute("all", all);
		return "mine";
	}
}
