package controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import bean.Weibo;
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
	
	//发布微博
	@RequestMapping("/post.do")
	@ResponseBody
	//将form表单中的数据封装到weibo对象中
	public String post(Weibo weibo){
		System.out.println(weibo.getPic1());
		weiboService.insertWeibo(weibo);
		return "mine";
	}
	
	//展示所有微博
	@RequestMapping("/show.do")
	public String showAll(ModelMap map){
		List<Weibo> all = weiboService.selectAll();
		map.addAttribute("all", all);
		System.out.println(map.toString());
		return "mine";
	}
	
}
