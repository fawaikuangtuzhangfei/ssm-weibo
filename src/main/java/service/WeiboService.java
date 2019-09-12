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
	public List<Weibo> selectAll() {
		List<Weibo> all = weiboMapper.selectAll();
		return all;
	}

	@Override
	public List<Weibo> selectById(Integer userId) {
		List<Weibo> all = weiboMapper.selectById(userId);
		return all;
	}

	@Override
	public List<Weibo> selectByContent(Integer userId, String content) {
		List<Weibo> all = weiboMapper.selectByContent(userId, content);
		return all;
	}

}
