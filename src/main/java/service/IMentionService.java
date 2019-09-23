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
	
	//计算差值
	/**
	 * 用户新增的粉丝数量
	 * @param userId
	 * @return
	 */
	Integer selectNewAddFans(Integer userId);
	
	
}
