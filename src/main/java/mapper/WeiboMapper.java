package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import bean.Weibo;

/**
 * t_weibo
 * 1.发布微博
 * @author nanshoudabaojian
 *
 */
public interface WeiboMapper {
	
	/**
	 * 发布微博
	 * @param weibo
	 * @return
	 */
	boolean insert(Weibo weibo);
	
	/**
	 * 查询共有多少条微博 ->用于实时微博分页使用
	 * @return
	 */
	Integer count();
	
	/**
	 * 查询本人有多少条微博 ->用于分页使用
	 * @param userId
	 * @return
	 */
	Integer countByUser(Integer userId);
	
	/**
	 * 删除此条微博
	 * @param id
	 */
	void delete(Integer id);
	
	/**
	 * 查询所有微博
	 * @param offset
	 * @param count
	 * @return
	 */
	List<Weibo> selectAll(@Param("offset")Integer offset, @Param("count")Integer count);
	
	/**
	 * 查询指定微博的全部内容->根据微博id查询
	 * @param weiboId
	 * @param offset
	 * @param count
	 * @return
	 */
	Weibo selectByWeiboId(@Param("weiboId")Integer weiboId,@Param("offset")Integer offset, @Param("count")Integer count);
	
	/**
	 * 查询指定微博的全部评论->根据微博id查询
	 * @param weiboId
	 * @return
	 */
	List<Weibo> selectComment(@Param("weiboId")Integer weiboId);
	
	/**
	 * 查询当前用户的所有微博-根据id 
	 * @param userId
	 * @param offset
	 * @param count
	 * @return
	 */
	List<Weibo> selectById(@Param("userId")Integer userId,@Param("offset")Integer offset, @Param("count")Integer count);
	
	/**
	 * 查询当前用户-根据id 的指定微博-根据内容
	 * @param userId
	 * @param content
	 * @param offset
	 * @param count
	 * @return
	 */
	List<Weibo> selectByContent(@Param("userId")Integer userId, @Param("content")String content,@Param("offset")Integer offset, @Param("count")Integer count);
	
	/**
	 * 查询当前用户-根据id 的指定微博-根据内容(不分页)的数量
	 * @param userId
	 * @param content
	 * @return
	 */
	Integer selectByContentNoPage(@Param("userId")Integer userId, @Param("content")String content);

	/**
	 * 查询多个用户的微博并按照时间排序
	 * @param userIds
	 * @param offset
	 * @param count
	 * @return
	 */
	List<Weibo> selectMany(@Param("userIds")Integer[] userIds, @Param("offset")Integer offset, @Param("count")Integer count);
	
	/**
	 * 查询多个用户总共有多少条微博
	 * @param userIds
	 * @return
	 */
	Integer countMany(Integer[] userIds);
	
	/**
	 * 查询指定内容的微博
	 * @param content
	 * @param offset
	 * @param count
	 * @return
	 */
	List<Weibo> selectByContents(@Param("content")String content,@Param("offset")Integer offset, @Param("count")Integer count);
	
	/**
	 * 查询当指定内容的指定微博-根据内容(不分页)的数量
	 * @param content
	 * @return
	 */
	Integer selectByContentsNoPage(@Param("content")String content);
	
	/**
	 * 查询当前用户被转发的微博-个人信息+微博内容
	 * @param userId
	 * @return
	 */
	List<Weibo> selectBy(Integer userId);
	
	
}
