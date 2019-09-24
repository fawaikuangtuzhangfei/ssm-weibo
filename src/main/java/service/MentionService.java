package service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import bean.Mention;
import bean.Weibo;
import mapper.CommentMapper;
import mapper.LikesMapper;
import mapper.MentionMapper;
import mapper.RelationMapper;
import mapper.WeiboMapper;

/**
 * t_mention 与我相关
 * @author nanshoudabaojian
 *
 */
@Service
public class MentionService implements IMentionService{
	
	@Resource
	private RelationMapper ralationMapper; //关注 粉丝
	@Resource
	private LikesMapper likesMapper; //点赞
	@Resource
	private CommentMapper commentMapper; //评论
	@Resource
	private WeiboMapper weiboMapper; //转发
	@Resource
	private MentionMapper mentionMapper;//mention

	//处于废弃状态 ->下面的方法可以完全替代这个
	@Override
	public Integer selectNewAddFans(Integer userId) {
		//现在的粉丝列表
		Integer[] nowFan = ralationMapper.selectFans(userId);
		//现在的粉丝数量
		Integer nowFansCount = nowFan.length;
		//之前的粉丝数量
		Integer oldFansCount = mentionMapper.selectFans(userId);
		//差值
		Integer fans = nowFansCount - oldFansCount;
		if(fans > 1){
			return fans;
		}else{
			fans = 0;
		}
		return fans;
	}

	@Override
	public Mention selectByUserId(Integer userId) {
		//查询到当前mention的全部信息 ->old数据
		Mention mention = mentionMapper.selectByUserId(userId);
		//查询现在的新数据
		
		//现在的粉丝列表
		Integer[] nowFan = ralationMapper.selectFans(userId);
		//现在的粉丝数量
		Integer nowFansCount = nowFan.length;
		//粉丝的差值
		Integer fans = nowFansCount - mention.getFanscount();
		//设置与我相关粉丝数
		mention.setFanscount(fans);
		//当粉丝数量减少时->设置通知为0 同时修改mention的粉丝数量
		if(fans < 0){
			mention.setFanscount(0);
			mentionMapper.updateFans(userId, nowFansCount);
		}
		
		//现在的赞的数量
		Integer nowLikes = likesMapper.selectLiked(userId);
		//赞的差值
		Integer likes = nowLikes - mention.getLikecount();
		//设置与我相关点赞数
		mention.setLikecount(likes);
		//当点赞数量减少时->设置通知为0 同时修改mention的点赞数量
		if(likes < 0){
			mention.setLikecount(0);
			mentionMapper.updateLike(userId, nowLikes);
		}
		
		//现在的评论的数量
		Integer[] nowComments = commentMapper.selectByUserId(userId);
		Integer nowComment = nowComments.length;
		//评论的差值
		Integer comment = nowComment - mention.getCommentcount();
		//设置与我相关评论数
		mention.setCommentcount(comment);
		//当评论数量减少时->设置通知为0 同时修改mention的评论数量
		if(comment < 0){
			mention.setFanscount(0);
			mentionMapper.updateComments(userId, nowComment);
		}
		
		//现在的转发数量
		List<Weibo> nowReposts = weiboMapper.selectBy(userId);
		Integer nowRepost = nowReposts.size();
		//转发的差值
		Integer repost = nowRepost - mention.getRepostcount();
		//设置与我相关的转发数量
		mention.setRepostcount(repost);
		//当转发的总数减少时->设置通知为0 同时修改mention的转发数量
		if(repost < 0){
			mention.setRepostcount(0);
			mentionMapper.updateReposts(userId, repost);
		}
		
		
		return mention;
	}

	@Override
	public void updateLikes(Integer userId, Integer likeCount) {
		mentionMapper.updateLike(userId, likeCount);
	}

	@Override
	public void updateFans(Integer userId, Integer fanCount) {
		mentionMapper.updateFans(userId, fanCount);
	}

	@Override
	public void updateReposts(Integer userId, Integer repostCount) {
		mentionMapper.updateReposts(userId, repostCount);
	}

	@Override
	public void updateComments(Integer userId, Integer commentCount) {
		mentionMapper.updateComments(userId, commentCount);
	}

	@Override
	public void updateRelys(Integer userId, Integer relyCount) {
		mentionMapper.updateRelys(userId, relyCount);
	}

}
