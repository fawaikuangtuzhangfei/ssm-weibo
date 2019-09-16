package service;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import bean.Collect;
import mapper.CollectMapper;

/**
 * t_collect 收藏
 * @author nanshoudabaojian
 *
 */
@Service
public class CollectService implements ICollectService{
	
	@Resource
	private CollectMapper collectMapper;

	@Override
	public void collect(Collect collect) {
		collectMapper.collect(collect);
	}

	@Override
	public Integer selctByUser(Integer userId, Integer weiboId) {
		return collectMapper.selectIsCollect(userId, weiboId);
	}

	@Override
	public void decollect(Collect collect) {
		collectMapper.decollect(collect);
	}

	@Override
	public Integer[] selectAll(Integer userId) {
		return collectMapper.selectAll( userId);
	}

	
	

}
