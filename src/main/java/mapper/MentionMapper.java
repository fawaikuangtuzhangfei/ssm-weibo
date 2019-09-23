package mapper;

import org.apache.ibatis.annotations.Param;

import bean.Mention;

/**
 * t_mention 与我相关
 * @author nanshoudabaojian
 *
 */
public interface MentionMapper {
	
	/**
	 * 新增用户的同时新增一个mention
	 * @param userId
	 */
	void insert(Integer userId);
	
	/**
	 * 查询某用户的全部信息
	 * @param userId
	 * @return
	 */
	Mention selectByUserId(Integer userId);
	
	/**
	 * 查询t_mention中用户之前的粉丝数量
	 * @param userId
	 * @return
	 */
	Integer selectFans(Integer userId);
	
	/**
	 * 修改当前用户的收到的赞的数量
	 * @param userId
	 * @param newLikeCount
	 */
	void updateLike(@Param("userId")Integer userId, @Param("likeCount")Integer likeCount);
	
	/**
	 * 修改当前用户的粉丝的数量
	 * @param userId
	 * @param newFanCount
	 */
	void updateFans(@Param("userId")Integer userId, @Param("newFanCount")Integer newFanCount);
	
}
