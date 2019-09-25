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
	 * 查询指定内容的微博
	 * @param content
	 * @param offset
	 * @param count
	 * @return
	 */
	List<Weibo> selectByContentS(String content, Integer offset, Integer count);
	
	/**
	 * 查询当前用户指定内容的微博数量
	 * @param userId
	 * @param content
	 * @return
	 */
	Integer selectByContentNoPage(Integer userId, String content);
	
	/**
	 * 查询指定内容的微博数量
	 * @param content
	 * @return
	 */
	Integer selectByContentsNoPage(String content);
	
	/**
	 * 查询所有微博总数-实时微博分页用
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
	
	/**
	 * 查询多个用户的所有微博并按照发微博的时间排序
	 * @param userIds
	 * @return
	 */
	List<Weibo> selectMany(Integer[] userIds, Integer offset, Integer count);
	
	/**
	 * 查询多个用户共有多少条微博
	 * @param userIds
	 * @return
	 */
	Integer countMany(Integer[] userIds);
	
	/**
	 * 查询当前用户收到的转发->个人信息+微博内容
	 * @param userId
	 * @return
	 */
	List<Weibo> selectBy(Integer userId);
	
}
