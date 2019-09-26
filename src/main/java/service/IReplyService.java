package service;

import java.util.List;

import bean.Reply;

/**
 * t_reply
 * @author nanshoudabaojian
 *
 */
public interface IReplyService {

	/**
	 * 新增回复
	 * @param reply
	 */
	void insertReply(Reply reply);
	
	/**
	 * 查询某条评论下的所有回复
	 * @param commentId
	 * @return
	 */
	List<Reply> selectAllReply(Integer commentId);
	
	/**
	 * 删除掉该条回复
	 * @param replyId
	 */
	void deleteReply(Integer replyId);
	
}
