package mapper;

import org.apache.ibatis.annotations.Param;

import bean.Collect;

/**
 * t_collection 收藏列表
 * @author 77515
 *
 */
public interface CollectMapper {
	
	/**
	 * 查询是否已被当前用户收藏于否
	 * @param userId
	 * @param weiboId
	 * @return
	 */
	Integer selectIsCollect(@Param("userId")Integer userId, @Param("weiboId")Integer weiboId);
	
	/**
	 * 收藏
	 * @param collect
	 */
	void collect(Collect collect);
	
	/**
	 * 取消收藏
	 * @param collect
	 */
	void decollect(Collect collect);
	
	
}
