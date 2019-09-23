package service;

import bean.Mention;

/**
 * t_mention 与我相关
 * @author nanshoudabaojian
 *
 */
public interface IMentionService {
	
	/**
	 * 查询该用户的所有mention信息
	 * @param userId
	 * @return
	 */
	Mention selectByUserId(Integer userId);
	
	//更新数据
	
	/**
	 * 更新现在的点赞数
	 * @param userId
	 * @param likeCount
	 */
	void updateLikes(Integer userId, Integer likeCount);

	/**
	 * 更新现在的粉丝数量
	 * @param userId
	 * @param likeCount
	 */
	void updateFans(Integer userId, Integer fanCount);	
	
	/**
	 * 更新现在的转发数量
	 * @param userId
	 * @param repostCount
	 */
	void updateReposts(Integer userId, Integer repostCount);
	
	/**
	 * 更新现在的评论数
	 * @param userId
	 * @param commentCount
	 */
	void updateComments(Integer userId, Integer commentCount);
	
	/**
	 * 更新现在的回复数
	 * @param userId
	 * @param relyCount
	 */
	void updateRelys(Integer userId, Integer relyCount);
	
	//计算差值
	/**
	 * 用户新增的粉丝数量
	 * @param userId
	 * @return
	 */
	Integer selectNewAddFans(Integer userId);
	
	
}
