package mapper;

import java.util.List;

import bean.Collect;

/**
 * t_collection 收藏列表
 * @author 77515
 *
 */
public interface CollectionMapper {
	
	/**
	 * 查询是否已被当前用户收藏于否
	 * @param collect
	 * @return
	 */
	List<Collect> selectIsCollect(Collect collect);
	
	/**
	 * 收藏
	 * @param collect
	 */
	void collect(Collect collect);
	
	
}
