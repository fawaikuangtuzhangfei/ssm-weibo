package service;

import bean.Likes;

/**
 * t_likes 点赞
 * @author 77515
 *
 */
public interface ILikesService {
	
	/**
	 * 点赞
	 * @param collect
	 */
	void like(Likes like);
	
	/**
	 * 查询当前用户点赞与否
	 * @param userId
	 * @param weiboId
	 * @return
	 */
	Integer selctByUser(Integer userId, Integer weiboId);
	
	/**
	 * 取消点赞
	 * @param collect
	 */
	void delike(Likes like);
	
	/**
	 * 微博点赞总数
	 * @param weiboId
	 * @return
	 */
	Integer selectCount(Integer weiboId);

}
