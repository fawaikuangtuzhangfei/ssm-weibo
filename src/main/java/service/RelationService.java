package service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import bean.Relation;
import mapper.RelationMapper;

/**
 * t_relation 关注列表
 * @author nanshoudabaojian
 *
 */
@Service
public class RelationService implements IRelationService{
	
	@Resource
	private RelationMapper ralationMapper;

	@Override
	public void relation(Relation relation) {
		ralationMapper.relation(relation);
	}

	@Override
	public Integer selctByUser(Integer userId, Integer followId) {
		return ralationMapper.selectIsRelation(userId, followId);
	}

	@Override
	public void deRelation(Relation relation) {
		ralationMapper.deRelation(relation);
	}

	@Override
	public Integer[] selectAll(Integer userId) {
		return ralationMapper.selectAll(userId);
	}

	@Override
	public Integer selectIsFollow(Integer userId, Integer followId) {
		return ralationMapper.selectIsRelation(userId, followId);
	}

}
