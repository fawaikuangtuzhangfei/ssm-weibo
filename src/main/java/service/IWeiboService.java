package service;

import java.util.List;

import bean.Weibo;

public interface IWeiboService {
	
	/**
	 * 发布微博 成功返回true 失败返回false
	 * @param weibo
	 * @return
	 */
	boolean insertWeibo(Weibo weibo);
	
	/**
	 * 查询目前所有的微博
	 * @return
	 */
	List<Weibo> selectAll();
	
	/**
	 * 查询指定用户的所有微博
	 * @return
	 */
	List<Weibo> selectById(Integer userId);
	
	/**
	 * 查询当前用户的指定内容的微博
	 * @param userId
	 * @param content
	 * @return
	 */
	List<Weibo> selectByContent(Integer userId, String content);
}
