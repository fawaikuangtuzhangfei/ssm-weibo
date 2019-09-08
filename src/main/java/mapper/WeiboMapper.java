package mapper;

import java.util.List;

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
	
	
}
