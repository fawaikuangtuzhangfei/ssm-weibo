package controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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

	@Resource
	WeiboService weiboService;
	
	@Resource
	UserService userService;
	
	//发布微博/转发微博
	@RequestMapping("/post.do")
	@ResponseBody
	//将form表单中的数据封装到weibo对象中
	//**存在问题，文件无法获取到，由于jsp页面中from表单传值的问题
	public void post(Weibo weibo){
		weiboService.insertWeibo(weibo);
	}
	
	//展示所有微博
	@RequestMapping("/show.do")
	public String showAll(ModelMap map){
		List<Weibo> all = weiboService.selectAll();
		map.addAttribute("all", all);
		return "mine";
	}
	
	//显示指定用户的微博->生硬的从session中取出了user对象进而取出了id
	@RequestMapping("/showOne.do")
	public String showById(ModelMap map, HttpServletRequest request){
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		Integer userId = user.getId();
		List<Weibo> all = weiboService.selectById(userId);
		map.addAttribute("all", all);
		return "mine";
	}
}
