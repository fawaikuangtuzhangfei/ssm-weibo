package mapper;

import java.util.List;

import bean.Comment;
import bean.Weibo;

/**
 * t_comment
 * @author nanshoudabaojian
 *
 */
public interface CommentMapper {
	
	/**
	 * 发布评论
	 * @param comment
	 * @return
	 */
	boolean insertComment(Comment comment);
	
	/**
	 * 查询当前微博下的所有评论
	 * @param weiboId
	 * @return
	 */
	List<Comment> selectAll(Integer weiboId);
	
	/**
	 * 删除评论
	 * @param commentId
	 */
	void deleteById(Integer commentId);
	
	/**
	 * 该条微博下有多少条评论
	 * @param weiboId
	 * @return
	 */
	Integer count(Integer weiboId);
	
	/**
	 * 当前用户收到的所有评论
	 * @param userId
	 * @return
	 */
	Integer[] selectByUserId(Integer userId);
	
	/**
	 * 当前用户收到的所有评论 ->个人信息+微博信息
	 * @param userId
	 * @return
	 */
	List<Comment> selectAllComments(Integer userId);
	
	/**
	 * 根据评论id查询微博的内容
	 * @param commentId
	 * @return
	 */
	Weibo selectByComment(Integer commentId);
	
}
