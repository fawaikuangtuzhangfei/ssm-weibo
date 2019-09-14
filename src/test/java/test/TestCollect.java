package test;

import java.util.Date;

import org.junit.Test;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import bean.Collect;
import bean.User;
import mapper.CollectMapper;
import mapper.UserMapper;
import service.IUserService;

public class TestCollect {
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
		CollectMapper mapper = ac.getBean("collectMapper", CollectMapper.class);
		//3.
		Collect collect = new Collect();
		collect.setUserId(48);
		collect.setWeiboId(104);
		mapper.collect(collect);
		//4.
		ac.close();
	}
	@Test
	public void testSelect() {
		//1.
		AbstractApplicationContext ac = new ClassPathXmlApplicationContext("application-dao.xml");
		//2.
		CollectMapper mapper = ac.getBean("collectMapper", CollectMapper.class);
		//3.
		System.out.println(mapper.selectIsCollect(48, 104));
		//4.
		ac.close();
	}
	
	@Test
	public void testDel() {
		//1.
		AbstractApplicationContext ac = new ClassPathXmlApplicationContext("application-dao.xml");
		//2.
		CollectMapper mapper = ac.getBean("collectMapper", CollectMapper.class);
		//3.
		Collect collect = new Collect();
		collect.setUserId(53);
		collect.setWeiboId(105);
		mapper.decollect(collect);
		//4.
		ac.close();
	}
	
	/**
	 * 测试业务层的addUser
	 */
	@Test
	public void testAddUser() {
		AbstractApplicationContext ac = new ClassPathXmlApplicationContext("application-dao.xml","application-service.xml");
		IUserService service = ac.getBean("userService", IUserService.class);
		User user = new User();
		user.setPassword("1234");
		user.setUsername("张飞2");
		user.setPhone("188");
		user.setEmail("7785425@qq.com");
		service.addUser(user);
		ac.close();
	}
	
	@Test
	public void testSelectByUsername(){
		AbstractApplicationContext ac = new ClassPathXmlApplicationContext("application-dao.xml");
		UserMapper mapper = ac.getBean("userMapper", UserMapper.class);
		User user = mapper.selectByUsername("liangweizhen");
		System.out.println(user);
		ac.close();
	}
	@Test
	public void testSelectByuserName() {
		AbstractApplicationContext ac = new ClassPathXmlApplicationContext("application-dao.xml","application-service.xml");
		IUserService service = ac.getBean("userService", IUserService.class);
		User user = service.selectByUsername("liangweizhen");
		System.out.println(user);
		ac.close();
	}
	@Test
	public void testSelectByEmail(){
		AbstractApplicationContext ac = new ClassPathXmlApplicationContext("application-dao.xml");
		UserMapper mapper = ac.getBean("userMapper", UserMapper.class);
		User user = mapper.selectByEmail("775159840@qq.com");
		System.out.println(user);
		ac.close();
	}
	@Test
	public void testUpdateU(){
		AbstractApplicationContext ac = new ClassPathXmlApplicationContext("application-dao.xml","application-service.xml");
		IUserService service = ac.getBean("userService", IUserService.class);
		User user = new User();
		user.setId(48);
		user.setNickname("admin321");
		user.setCity("2035");
		service.updateUser(user);
		System.out.println(user);
		ac.close();
	}
	
}
