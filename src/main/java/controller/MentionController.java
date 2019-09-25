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

import bean.Comment;
import bean.Likes;
import bean.Mention;
import bean.ResponseResult;
import bean.User;
import bean.Weibo;
import service.ICommentService;
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

	@Resource
	private ICommentService commentService;// 评论

	@RequestMapping("/getNotice.do")
	@ResponseBody
	public ResponseResult<Mention> getNotice(HttpServletRequest request) {
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
			if (maxTime == 1) {// 让他maxTime*3秒刷新一次
				break;
			}

		}

		rr = new ResponseResult<Mention>(1, "查询成功", mention);
		return rr;
	}

	/**
	 * 跳转到我收到的赞页面 ->同时修改mention中的赞的数量
	 * 
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
		// 当前页上显示多少个
		List<Likes> pages = new ArrayList<Likes>();
		for (int i = offset; i < count; i++) {
			pages.add(likesList.get(i));
			j++;
			if (j >= haveMany) {
				break;
			}
		}

		// 获取到当前mention的全部差值信息
		List<Likes> likes = likesService.selectAllBy(userId);
		// 目前的点赞数目
		Integer likeCount = likes.size();
		// 修改mention中的likecount
		mentionService.updateLikes(userId, likeCount);

		map.addAttribute("likesList", pages);
		// 将页数和总数和当前页面放进session中
		map.addAttribute("count", count);
		map.addAttribute("pageSize", pageSize);
		map.addAttribute("curpage", page);
		map.addAttribute("wz", "showLiked.do?");
		return "LikePage";
	}

	/**
	 * 跳转到我的粉丝页面-同时修改mention中的粉丝数量
	 * 
	 * @param userId
	 * @param map
	 * @return
	 */
	@RequestMapping("showFanList")
	public String showFanList(Integer userId, Integer nowId, ModelMap map) {
		log.info("粉丝列表");
		// 查询到目前登录用户的所有关注-关注用户的id
		Integer[] nowfollows = relationService.selectAll(userId);
		// 查询当前主页用户的全部信息
		User nowUser = userService.selectById(nowId);
		// 查询当前主页的所有关注
		Integer[] follows = relationService.selectAll(nowId);
		// 查询目前nowId的所有粉丝-当前用户的id
		Integer[] fans = relationService.selectFans(nowId);
		// 存放查到的用户的所有信息
		List<User> users = new ArrayList<User>();
		/*
		 * 目前nowId的粉丝 = 登录用户的关注 ->4互相关注
		 * 目前nowId的粉丝 != 登录用户的关注 ->1陌生
		 * follows 主页的关注
		 */
		for (int fanId : fans) {
			User user = userService.selectById(fanId);
			if (user != null) {
				users.add(user);
				user.setState(1);
				//目前nowId的粉丝 = 登录用户的关注 ->4互相关注
				for (int followId : nowfollows) {
					if (fanId == followId) {
						user.setState(3);
						break;
					}
				}
			}
		}
		
		// 获取到我目前的粉丝数量
		Integer fanCount = relationService.selectFans(userId).length;
		// 修改mention中我的粉丝数量
		mentionService.updateFans(userId, fanCount);
		
		// 查询当前用户的微博总数
		Integer nowWeiboCount = weiboService.countByUser(nowId);
		
		//将微博总数、粉丝总数、关注总数放入map中
		map.addAttribute("nowWeiboCount", nowWeiboCount);
		map.addAttribute("nowFansCount", fans.length);
		map.addAttribute("nowFollowCount", follows.length);
		// 将查询到的用户的全部信息传入页面
		map.addAttribute("followList", users);
		// 将现在的用户的信息也存入
		map.addAttribute("nowUser", nowUser);

		// 将查询到的用户的全部信息传入页面
		map.addAttribute("followList", users);

		return "fanlist";
	}

	/**
	 * 跳转到我收到的评论页面 ->同时修改mention中的评论的数量
	 * 
	 * @param request
	 * @param map
	 * @param page
	 * @return
	 */
	@RequestMapping("/showComment")
	public String showAllComment(HttpServletRequest request, ModelMap map, Integer page) {
		// 默认为当前页
		if (page == null) {
			page = 1;
		}
		// 一页展示10个 当前是第几个
		Integer offset = (page - 1) * 10;
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		Integer userId = user.getId();

		// 查询当前用户被哪些评论了->个人信息+简短微博信息
		List<Comment> commentsList = commentService.selectAlls(userId);

		// 总评论
		Integer count = commentsList.size();
		// 一页上显示10个，总共几页
		int pageSize = count % 10 == 0 ? count / 10 : count / 10 + 1;
		// 当前页有几个
		int haveMany = page == pageSize ? pageSize * 10 - count : 10;
		int j = 0;
		if (pageSize == 1) {
			haveMany = 10;
		}
		// 当前页上显示多少个
		List<Comment> pages = new ArrayList<Comment>();
		for (int i = offset; i < count; i++) {
			pages.add(commentsList.get(i));
			j++;
			if (j >= haveMany) {
				break;
			}
		}

		// 目前的评论数目
		List<Comment> comments = commentService.selectAlls(userId);
		Integer commentCount = comments.size();
		// 修改mention中的commentCount
		mentionService.updateComments(userId, commentCount);

		map.addAttribute("commentList", pages);
		// 将页数和总数和当前页面放进session中
		map.addAttribute("count", count);
		map.addAttribute("pageSize", pageSize);
		map.addAttribute("curpage", page);
		map.addAttribute("wz", "showComment.do?");
		return "CommentPage";
	}

	/**
	 * 跳转到我收到的转发页面 ->同时修改mention中的转发的数量
	 * 
	 * @param request
	 * @param map
	 * @param page
	 * @return
	 */
	@RequestMapping("/showRepost")
	public String showAllRepost(HttpServletRequest request, ModelMap map, Integer page) {
		log.info("跳转到我收到的转发页面");
		// 默认为当前页
		if (page == null) {
			page = 1;
		}
		// 一页展示10个 当前是第几个
		Integer offset = (page - 1) * 10;
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		Integer userId = user.getId();

		// 查询当前用户被哪些转发了->个人信息+简短微博信息
		List<Weibo> repostList = weiboService.selectBy(userId);

		// 总转发的数量
		Integer count = repostList.size();
		// 一页上显示10个，总共几页
		int pageSize = count % 10 == 0 ? count / 10 : count / 10 + 1;
		// 当前页有几个
		int haveMany = page == pageSize ? pageSize * 10 - count : 10;
		int j = 0;
		if (pageSize == 1) {
			haveMany = 10;
		}
		// 当前页上显示多少个
		List<Weibo> pages = new ArrayList<Weibo>();
		for (int i = offset; i < count; i++) {
			pages.add(repostList.get(i));
			j++;
			if (j >= haveMany) {
				break;
			}
		}

		// 获取到当前mention的全部差值信息
		List<Weibo> repost = weiboService.selectBy(userId);
		// 目前的转发数目
		Integer repostCount = repost.size();
		// 修改mention中的commentCount
		mentionService.updateReposts(userId, repostCount);

		map.addAttribute("RepostList", pages);
		// 将页数和总数和当前页面放进session中
		map.addAttribute("count", count);
		map.addAttribute("pageSize", pageSize);
		map.addAttribute("curpage", page);
		map.addAttribute("wz", "showRepost.do?");
		return "RepostPage";
	}

}
