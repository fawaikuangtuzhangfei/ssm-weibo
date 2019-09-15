package service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import bean.Likes;
import mapper.LikesMapper;

/**
 * t_likes 点赞
 * @author nanshoudabaojian
 *
 */
@Service
public class LikesService implements ILikesService{
	
	@Resource
	private LikesMapper likemapper;

	@Override
	public void like(Likes like) {
		likemapper.like(like);
	}

	@Override
	public Integer selctByUser(Integer userId, Integer weiboId) {
		return likemapper.selectIsLike(userId, weiboId);
	}

	@Override
	public void delike(Likes like) {
		likemapper.delike(like);
	}

	@Override
	public Integer selectCount(Integer weiboId) {
		return likemapper.selectCount(weiboId);
	}
	
	
	

}
