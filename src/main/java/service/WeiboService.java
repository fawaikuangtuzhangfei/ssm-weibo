package service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import bean.Weibo;
import mapper.WeiboMapper;

/**
 * 微博
 * @author nanshoudabaojian
 *
 */
@Service
public class WeiboService implements IWeiboService{
	
	@Resource
	WeiboMapper weiboMapper;

	@Override
	public boolean insertWeibo(Weibo weibo) {
		weiboMapper.insert(weibo);
		return true;
	}

	@Override
	public List<Weibo> selectAll(Integer offset, Integer count) {
		List<Weibo> all = weiboMapper.selectAll(offset, count);
		return all;
	}

	@Override
	public List<Weibo> selectById(Integer userId, Integer offset, Integer count) {
		List<Weibo> all = weiboMapper.selectById(userId,offset, count);
		return all;
	}

	@Override
	public List<Weibo> selectByContent(Integer userId, String content, Integer offset, Integer count) {
		List<Weibo> all = weiboMapper.selectByContent(userId, content,offset, count);
		return all;
	}

	@Override
	public Integer count() {
		return weiboMapper.count();
	}

	@Override
	public Integer countByUser(Integer userId) {
		return weiboMapper.countByUser(userId);
	}

	@Override
	public Weibo selectByWeiboId(Integer weiboId, Integer offset, Integer count) {
		return weiboMapper.selectByWeiboId(weiboId, offset, count);
	}

	@Override
	public void delWeibo(Integer id) {
		weiboMapper.delete(id);
	}

	@Override
	public Integer selectByContentNoPage(Integer userId, String content) {
		return weiboMapper.selectByContentNoPage(userId, content);
	}

	@Override
	public List<Weibo> selectMany(Integer[] userIds, Integer offset, Integer count) {
		return weiboMapper.selectMany(userIds, offset, count);
	}

	@Override
	public Integer countMany(Integer[] userIds) {
		return weiboMapper.countMany(userIds);
	}

}
