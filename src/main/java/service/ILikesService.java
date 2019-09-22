package service;

import java.util.List;

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
	
	/**
	 * 查询当前用户的点赞的微博id
	 * @param userId
	 * @return
	 */
	Integer[] selectAllLikes(Integer userId);
	
	/**
	 * 查询当前用户的微博被哪些人点赞了->个人信息+简短微博信息
	 * @param userId
	 * @return
	 */
	List<Likes> selectAllBy(Integer userId);

}
