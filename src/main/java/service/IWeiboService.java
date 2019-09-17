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
	List<Weibo> selectAll(Integer offset, Integer count);
	
	/**
	 * 查询指定用户的所有微博
	 * @return
	 */
	List<Weibo> selectById(Integer userId, Integer offset, Integer count);
	
	/**
	 * 查询当前用户的指定内容的微博
	 * @param userId
	 * @param content
	 * @return
	 */
	List<Weibo> selectByContent(Integer userId, String content, Integer offset, Integer count);
	
	/**
	 * 查询当前用户指定内容的微博数量
	 * @param userId
	 * @param content
	 * @return
	 */
	Integer selectByContentNoPage(Integer userId, String content);
	
	/**
	 * 查询所有微博总数
	 * @return
	 */
	Integer count();
	
	/**
	 * 查询当前用户共有多少条微博
	 * @param userId
	 * @return
	 */
	Integer countByUser(Integer userId);
	
	/**
	 * 查询指定微博的全部内容
	 * @param weiboId
	 * @return
	 */
	Weibo selectByWeiboId(Integer weiboId, Integer offset, Integer count);
	
	/**
	 * 删除掉此条微博
	 * @param id
	 */
	void delWeibo(Integer id);
}
