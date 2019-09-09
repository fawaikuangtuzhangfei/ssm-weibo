package service;

import java.util.List;

import bean.Comment;

/**
 * t_comment 评论
 * @author nanshoudabaojian
 *
 */
public interface ICommentService {

	/**
	 * 发表评论
	 * @param comment
	 * @return
	 */
	boolean postComment(Comment comment);
	
	/**
	 * 查询该微博下的所有评论
	 * @param weiboId
	 * @return
	 */
	List<Comment> selectAll(Integer weiboId);
	
}
