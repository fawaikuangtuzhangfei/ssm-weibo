package mapper;

import java.util.List;

import bean.Reply;

/**
 * t_reply 回复列表
 * @author nanshoudabaojian
 *
 */
public interface ReplyMapper {
	
	/**
	 * 新增回复
	 * @param reply
	 */
	void insert(Reply reply);
	
	/**
	 * 查看该条评论的全部回复
	 * @param commentId
	 * @return
	 */
	List<Reply> select(Integer commentId);
	
	/**
	 * 删除该条回复
	 * @param replyId
	 */
	void delete(Integer replyId);
	
	/**
	 * 查询当前用户的所有回复->回复信息+微博信息+个人信息
	 * @param userId
	 * @return
	 */
	List<Reply> selectAllReply(Integer userId);
	
	
}
