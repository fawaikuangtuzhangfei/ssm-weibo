package test;

import org.junit.Test;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import bean.Reply;
import mapper.CommentMapper;
import mapper.ReplyMapper;
import service.ICommentService;
import service.IReplyService;
import service.ReplyService;

public class TestReply {
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
		ReplyMapper mapper = ac.getBean("replyMapper", ReplyMapper.class);
		//3.
		Reply reply = new Reply();
		/*
		 * commentId: "96"
fromId: "48"
replyContent: "嘻嘻"
time: "2019-9-25 16:27:19"
toId: "48"
		 */
		reply.setCommentId(96);
		reply.setFromId(48);
		reply.setReplyContent("嘻嘻嘻");
		reply.setToId(48);
		mapper.insert(reply);
		//4.
		ac.close();
	}
	
	@Test
	public void testSelectAll() {
		//1.
		AbstractApplicationContext ac = new ClassPathXmlApplicationContext("application-dao.xml");
		//2.
		ReplyMapper mapper = ac.getBean("replyMapper", ReplyMapper.class);
		//3.
		System.out.println(mapper.select(95));
		//4.
		ac.close();
	}
	
	@Test
	public void testSelectAlls() {
		//1.
		AbstractApplicationContext ac = new ClassPathXmlApplicationContext("application-dao.xml");
		//2.
		CommentMapper mapper = ac.getBean("commentMapper", CommentMapper.class);
		//3.
		System.out.println(mapper.selectAllComments(70));
		//4.
		ac.close();
	}
	@Test
	public void testSelectAllComment() {
		//1.
		AbstractApplicationContext ac = new ClassPathXmlApplicationContext("application-dao.xml");
		//2.
		CommentMapper mapper = ac.getBean("commentMapper", CommentMapper.class);
		//3.
		System.out.println(mapper.selectByUserId(70));
		//4.
		ac.close();
	}
	
	@Test
	public void testDel() {
		//1.
		AbstractApplicationContext ac = new ClassPathXmlApplicationContext("application-dao.xml");
		//2.
		CommentMapper mapper = ac.getBean("commentMapper", CommentMapper.class);
		//3.
		mapper.deleteById(1);
		//4.
		ac.close();
	}
	
	@Test
	public void testCount() {
		//1.
		AbstractApplicationContext ac = new ClassPathXmlApplicationContext("application-dao.xml");
		//2.
		CommentMapper mapper = ac.getBean("commentMapper", CommentMapper.class);
		//3.
		Integer count = mapper.count(88);
		System.out.println(count);
		//4.
		ac.close();
	}
	
	/**
	 * 测试业务层的insert
	 */
	@Test
	public void testAddComment() {
		AbstractApplicationContext ac = new ClassPathXmlApplicationContext("application-dao.xml","application-service.xml");
		IReplyService service = ac.getBean("replyService", ReplyService.class);
		Reply reply = new Reply();
		/*
		 * commentId: "96"
fromId: "48"
replyContent: "嘻嘻"
time: "2019-9-25 16:27:19"
toId: "48"
		 */
		reply.setCommentId(96);
		reply.setFromId(48);
		reply.setReplyContent("嘻嘻嘻");
		reply.setToId(48);
		service.insertReply(reply);
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
