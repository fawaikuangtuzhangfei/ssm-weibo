package service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import bean.Comment;
import mapper.CommentMapper;

/**
 * t_comment 评论
 * @author nanshoudabaojian
 *
 */
@Service
public class CommentService implements ICommentService{
	
	@Resource
	private CommentMapper commentMapper;

	@Override
	public boolean postComment(Comment comment) {
		commentMapper.insertComment(comment);
		return true;
	}

	@Override
	public List<Comment> selectAll(Integer weiboId) {
		return commentMapper.selectAll(weiboId);
	}

	@Override
	public void deleteComment(Integer commentId) {
		commentMapper.deleteById(commentId);
	}

	@Override
	public Integer countComments(Integer weiboId) {
		return commentMapper.count(weiboId);
	}

	@Override
	public List<Comment> selectAlls(Integer userId) {
		return commentMapper.selectAllComments(userId);
	}
	
	

}
