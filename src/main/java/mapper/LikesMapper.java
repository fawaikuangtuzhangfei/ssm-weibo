package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import bean.Likes;

/**
 * t_likes 点赞列表
 * @author 77515
 *
 */
public interface LikesMapper {
	
	/**
	 * 查询是否已被当前用户点赞于否
	 * @param userId
	 * @param weiboId
	 * @return
	 */
	Integer selectIsLike(@Param("userId")Integer userId, @Param("weiboId")Integer weiboId);
	
	/**
	 * 点赞
	 * @param like
	 */
	void like(Likes like);
	
	/**
	 * 取消点赞
	 * @param like
	 */
	void delike(Likes like);
	
	/**
	 * 当前微博点赞总数
	 * @param weiboId
	 * @return
	 */
	Integer selectCount(Integer weiboId);
	
	/**
	 * 查询当前用户的所有点赞微博id
	 * @param userId
	 * @return
	 */
	Integer[] selectAllLikes(Integer userId);
	
	/**
	 * 查询当前用户被点赞微博的数量
	 * @param userId
	 * @return
	 */
	Integer selectLiked(Integer userId);
	
	/**
	 * 查询当前用户的微博被哪些人点赞了->个人信息+简短微博信息
	 * @param userId
	 * @return
	 */
	List<Likes> selectLikedBy(Integer userId);
	
}
