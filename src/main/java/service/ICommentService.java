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
	
	/**
	 * 删除该条评论
	 * @param commentId
	 */
	void deleteComment(Integer commentId);
	
	/**
	 * 查询该条微博下的评论数量
	 * @param weiboId
	 * @return
	 */
	Integer countComments(Integer weiboId);
}
