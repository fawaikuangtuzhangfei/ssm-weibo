package service;

import bean.Collect;

/**
 * t_collect
 * @author 77515
 *
 */
public interface ICollectService {
	
	/**
	 * 收藏
	 * @param collect
	 */
	void collect(Collect collect);
	
	/**
	 * 查询当前用户收藏与否
	 * @param userId
	 * @param weiboId
	 * @return
	 */
	Integer selctByUser(Integer userId, Integer weiboId);
	
	/**
	 * 取消收藏
	 * @param collect
	 */
	void decollect(Collect collect);
}
