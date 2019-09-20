package service;


import bean.Relation;

/**
 * t_relation
 * @author 77515
 *
 */
public interface IRelationService {
	
	/**
	 * 关注
	 * @param Relation
	 */
	void relation(Relation relation);
	
	/**
	 * 查询当前用户关注与否
	 * @param userId
	 * @param followId
	 * @return
	 */
	Integer selctByUser(Integer userId, Integer followId);
	
	/**
	 * 取消关注
	 * @param Relation
	 */
	void deRelation(Relation relation);
	
	/**
	 * 查询所看的这个用户是否已经被当前登录用户关注
	 * @param userId
	 * @param followId
	 * @return
	 */
	Integer selectIsFollow(Integer userId, Integer followId);
	
	
	/**
	 * 查看当前用户的所有关注
	 * @param userId
	 * @return
	 */
	Integer[] selectAll(Integer userId);
	
	/**
	 * 查看当前用户的所有粉丝
	 * @param userId
	 * @return
	 */
	Integer[] selectFans(Integer userId);
}
