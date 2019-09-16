package test;

import org.junit.Test;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import bean.Comment;
import bean.Likes;
import mapper.CommentMapper;
import mapper.LikesMapper;
import service.ICommentService;

public class TestLikes {
	/*
	 * 1.测试方法的返回类型为void类型
	 * 2.测试方法的访问修饰符为public
	 * 3.测试方法的参数列表为空
	 */
	
	@Test
	public void testInsert() {
		//1.
		AbstractApplicationContext ac = new ClassPathXmlApplicationContext("application-dao.xml");
		//2.
		LikesMapper mapper = ac.getBean("likesMapper", LikesMapper.class);
		//3.
		Likes like = new Likes();
		like.setUserId(48);
		like.setWeiboId(104);
		mapper.like(like);
		//4.
		ac.close();
	}
	
	@Test
	public void testSelectAll() {
		//1.
		AbstractApplicationContext ac = new ClassPathXmlApplicationContext("application-dao.xml");
		//2.
		LikesMapper mapper = ac.getBean("likesMapper", LikesMapper.class);
		//3.
		System.out.println(mapper.selectCount(104));
		//4.
		ac.close();
	}
	
	@Test
	public void testSelectAllLikes() {
		//1.
		AbstractApplicationContext ac = new ClassPathXmlApplicationContext("application-dao.xml");
		//2.
		LikesMapper mapper = ac.getBean("likesMapper", LikesMapper.class);
		//3.
		Integer [] likes = mapper.selectAllLikes(48);
		for(Integer i:likes){
			System.out.println(i);
		}
		//4.
		ac.close();
	}
	
	@Test
	public void testDel() {
		//1.
		AbstractApplicationContext ac = new ClassPathXmlApplicationContext("application-dao.xml");
		//2.
		LikesMapper mapper = ac.getBean("likesMapper", LikesMapper.class);
		//3.
		Likes like = new Likes();
		like.setUserId(48);
		like.setWeiboId(104);
		mapper.delike(like);
		//4.
		ac.close();
	}
	
	@Test
	public void testIs() {
		//1.
		AbstractApplicationContext ac = new ClassPathXmlApplicationContext("application-dao.xml");
		//2.
		LikesMapper mapper = ac.getBean("likesMapper", LikesMapper.class);
		//3.
		System.out.println(mapper.selectIsLike(48, 104));
		//4.
		ac.close();
	}
	
	/**
	 * 测试业务层的insert
	 */
	@Test
	public void testAddComment() {
		AbstractApplicationContext ac = new ClassPathXmlApplicationContext("application-dao.xml","application-service.xml");
		ICommentService service = ac.getBean("commentService", ICommentService.class);
		Comment comment = new Comment();
		comment.setUserId(23);
		comment.setWeiboId(12);
		comment.setCommentContent("测试评论2");
		service.postComment(comment);
		ac.close();
	}
	
	@Test
	public void testSelect() {
		AbstractApplicationContext ac = new ClassPathXmlApplicationContext("application-dao.xml","application-service.xml");
		ICommentService service = ac.getBean("commentService", ICommentService.class);
		System.out.println(service.selectAll(12));
		ac.close();
	}
	
	
}
