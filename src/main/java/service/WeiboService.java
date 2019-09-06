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
		return false;
	}

	@Override
	public List<Weibo> selectAll() {
		List<Weibo> all = weiboMapper.selectAll();
		return all;
	}

}
