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
	
	//发布微博
	boolean insert(Weibo weibo);
	
	//查询共有多少条微博 ->用于分页使用
	Integer count();
	
	//查询本人有多少条微博 ->用于分页使用
	Integer countByUser(Integer userId);
	
	//删除此条微博
	void delete(Integer id);
	
	//查询所有微博
	List<Weibo> selectAll(@Param("offset")Integer offset, @Param("count")Integer count);
	
	//查询指定微博的全部内容->根据微博id查询
	Weibo selectByWeiboId(@Param("weiboId")Integer weiboId,@Param("offset")Integer offset, @Param("count")Integer count);
	
	//查询当前用户的所有微博-根据id 
	List<Weibo> selectById(@Param("userId")Integer userId,@Param("offset")Integer offset, @Param("count")Integer count);
	
	//查询当前用户-根据id 的指定微博-根据内容
	List<Weibo> selectByContent(@Param("userId")Integer userId, @Param("content")String content,@Param("offset")Integer offset, @Param("count")Integer count);
	
	
}
