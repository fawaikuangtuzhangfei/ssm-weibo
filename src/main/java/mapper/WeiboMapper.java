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
	
	//查询所有微博
	List<Weibo> selectAll();
	
	//查询当前用户的所有微博-根据id 
	List<Weibo> selectById(Integer userId);
	
	//查询当前用户-根据id 的指定微博-根据内容
	List<Weibo> selectByContent(@Param("userId")Integer userId, @Param("content")String content);
	
	
}
