package test;

import java.util.List;

import org.junit.Test;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import bean.Weibo;
import mapper.WeiboMapper;
import service.IWeiboService;

/**
 * 测试t_weibo
 * @author nanshoudabaojian
 *
 */
public class TestWeibo {
	
	@Test
	public void testSelectById() {
		//1.
		AbstractApplicationContext ac = new ClassPathXmlApplicationContext("application-dao.xml");
		//2.
		WeiboMapper mapper = ac.getBean("weiboMapper", WeiboMapper.class);
		//3.
		Integer userId = 58;
		List<Weibo> weibo = mapper.selectById(userId, 1, 10);
		System.out.println(weibo.toString());
		//4.
		ac.close();
	}
	@Test
	public void testCountMany() {
		//1.
		AbstractApplicationContext ac = new ClassPathXmlApplicationContext("application-dao.xml");
		//2.
		WeiboMapper mapper = ac.getBean("weiboMapper", WeiboMapper.class);
		//3.
		Integer []userIds = {58,57,59,60};
		System.out.println(mapper.countMany(userIds));
		//4.
		ac.close();
	}
	@Test
	public void testSelectMany() {
		//1.
		AbstractApplicationContext ac = new ClassPathXmlApplicationContext("application-dao.xml");
		//2.
		WeiboMapper mapper = ac.getBean("weiboMapper", WeiboMapper.class);
		//3.
		Integer []userIds = {58,57,59,60};
		List<Weibo> weibo = mapper.selectMany(userIds,0 ,10);
		System.out.println(weibo.toString());
		//4.
		ac.close();
	}
	@Test
	public void testSelectMany2() {
		AbstractApplicationContext ac = new ClassPathXmlApplicationContext("application-dao.xml","application-service.xml");
		IWeiboService service = ac.getBean("weiboService", IWeiboService.class);
		Integer []userIds = {58,57,59,60};
		List<Weibo> weibo = service.selectMany(userIds,0,10);
		System.out.println(weibo);
		ac.close();
	}
	@Test
	public void testDel() {
		//1.
		AbstractApplicationContext ac = new ClassPathXmlApplicationContext("application-dao.xml");
		//2.
		WeiboMapper mapper = ac.getBean("weiboMapper", WeiboMapper.class);
		//3.
		mapper.delete(122);
		//4.
		ac.close();
	}
	
	@Test
	public void testSelectByweiboId() {
		//1.
		AbstractApplicationContext ac = new ClassPathXmlApplicationContext("application-dao.xml");
		//2.
		WeiboMapper mapper = ac.getBean("weiboMapper", WeiboMapper.class);
		//3.
		Weibo weibo = mapper.selectByWeiboId(118, 0, 10);
		System.out.println(weibo.toString());
		//4.
		ac.close();
	}
	@Test
	public void testSelectWeiboIds() {
		AbstractApplicationContext ac = new ClassPathXmlApplicationContext("application-dao.xml","application-service.xml");
		IWeiboService service = ac.getBean("weiboService", IWeiboService.class);
		Weibo weibo = service.selectByWeiboId(118, 0, 10);
		System.out.println(weibo);
		ac.close();
	}
	
	@Test
	public void testSelectAll() {
		//1.
		AbstractApplicationContext ac = new ClassPathXmlApplicationContext("application-dao.xml");
		//2.
		WeiboMapper mapper = ac.getBean("weiboMapper", WeiboMapper.class);
		//3.
		List<Weibo> weibo = mapper.selectAll(1,10);
		System.out.println(weibo.toString());
		//4.
		ac.close();
	}
	@Test
	public void testSelectByContent() {
		//1.
		AbstractApplicationContext ac = new ClassPathXmlApplicationContext("application-dao.xml");
		//2.
		WeiboMapper mapper = ac.getBean("weiboMapper", WeiboMapper.class);
		//3.
		List<Weibo> weibo = mapper.selectByContent(48, "测试时间",1,10);
		System.out.println(weibo.toString());
		//4.
		ac.close();
	}
	
	@Test
	public void testSelectAllS() {
		AbstractApplicationContext ac = new ClassPathXmlApplicationContext("application-dao.xml","application-service.xml");
		IWeiboService service = ac.getBean("weiboService", IWeiboService.class);
		List<Weibo> weibo = service.selectAll(1, 10);
		System.out.println(weibo);
		ac.close();
	}
	
	@Test
	public void testInsert() {
		//1.
		AbstractApplicationContext ac = new ClassPathXmlApplicationContext("application-dao.xml");
		//2.
		WeiboMapper mapper = ac.getBean("weiboMapper", WeiboMapper.class);
		//3.
		Weibo weibo = new Weibo();
		weibo.setUserId(48);
		weibo.setContent("测试类微博1");
		weibo.setPic1("1.png");
		weibo.setPic2("2.png");
		weibo.setPic3("3.png");
		weibo.setPic4("4.png");
		weibo.setPic6("4.png");
		weibo.setPic7("4.png");
		weibo.setPic8("4.png");
		weibo.setPic9("4.png");
		weibo.setRepostId(1);
		weibo.setOriginal(1);
		mapper.insert(weibo);
		//4.
		ac.close();
	}
	
	@Test
	public void testAddUser() {
		AbstractApplicationContext ac = new ClassPathXmlApplicationContext("application-dao.xml","application-service.xml");
		IWeiboService service = ac.getBean("weiboService", IWeiboService.class);
		Weibo weibo = new Weibo();
		weibo.setContent("测试微博2");
		weibo.setUserId(48);
		service.insertWeibo(weibo);
		ac.close();
	}
	
}
