package service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import bean.Reply;
import mapper.ReplyMapper;

/**
 * t_reply 回复列表
 * @author nanshoudabaojian
 *
 */
@Service
public class ReplyService implements IReplyService{

	@Resource
	private ReplyMapper replyMapper;// 回复
	
	
	@Override
	public void insertReply(Reply reply) {
		replyMapper.insert(reply);
	}

	@Override
	public List<Reply> selectAllReply(Integer commentId) {
		return replyMapper.select(commentId);
	}

	@Override
	public void deleteReply(Integer replyId) {
		replyMapper.delete(replyId);
	}

	@Override
	public List<Reply> selectAllReplys(Integer userId) {
		return replyMapper.selectAllReply(userId);
	}

}
