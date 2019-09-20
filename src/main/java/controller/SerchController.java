package controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import bean.Weibo;
import service.ICollectService;
import service.WeiboService;

/**
 * 专门用于查询的controller
 * @author 77515
 *
 */
@Controller
@RequestMapping("/serch")
public class SerchController {
	
	public final Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private WeiboService weiboService;
	
	@Resource
	private ICollectService collectService;
	
	// 显示指定内容的微博
	@RequestMapping("/selectByContents.do")
	public String showByContent(Integer page, ModelMap map, HttpServletRequest request,@RequestParam("content") String content) {
		log.info("要搜的内容是:" + content + ",当前页数:" + page);
		// 默认为当前页
		if (page == null) {
			page = 1;
		}
		// 一页展示10个 当前是第几个
		Integer offset = (page - 1) * 10;
		//有多少个符合条件的查询结果
		Integer count = weiboService.selectByContentsNoPage(content);
		
		List<Weibo> all = weiboService.selectByContentS(content, offset, 10);
		
		// 一页上显示10个，总共几页
		int pageSize = count % 10 == 0 ? count / 10 : count / 10 + 1;
		// 存放所有转发的微博
		for (int i = offset; i < pageSize; i++) {
			// 是否原创
			Integer repostId = all.get(i).getRepostId();
			Weibo repost = weiboService.selectByWeiboId(repostId, offset, 10);
			all.get(i).setRepost(repost);
		}
		map.addAttribute("all", all);
		// 将页数和总数和当前页面放进session中
		map.addAttribute("count", count);
		map.addAttribute("pageSize", pageSize);
		map.addAttribute("curpage", page);
		map.addAttribute("wz", "../serch/selectByContents.do?content=" + content + "&");
		return "mine";
	}
	
}
