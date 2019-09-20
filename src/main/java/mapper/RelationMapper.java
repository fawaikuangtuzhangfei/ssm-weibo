package mapper;


import org.apache.ibatis.annotations.Param;

import bean.Relation;

/**
 * t_relation 关注列表
 * @author 77515
 *
 */
public interface RelationMapper {
	
	/**
	 * 查询是否已被当前用户关注于否
	 * @param userId
	 * @param weiboId
	 * @return
	 */
	Integer selectIsRelation(@Param("userId")Integer userId, @Param("followId")Integer followId);
	
	/**
	 * 关注
	 * @param Relation
	 */
	void relation(Relation relation);
	
	/**
	 * 取消关注
	 * @param Relation
	 */
	void deRelation(Relation relation);
	
	/**
	 * 查询当前用户的所有关注
	 * @param offset
	 * @param count
	 * @param userId
	 * @return
	 */
	Integer[] selectAll(@Param("userId")Integer userId);
	
	/**
	 * 查询当前用户的所有粉丝
	 * @param userId
	 * @return
	 */
	Integer[] selectFans(@Param("userId")Integer userId);
}
