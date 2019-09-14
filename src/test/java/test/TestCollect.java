package test;

import java.util.Date;

import org.junit.Test;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import bean.User;
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
		UserMapper mapper = ac.getBean("userMapper", UserMapper.class);
		//3.
		User user = new User();
		user.setEmail("775159840@qq.com");
		user.setUsername("775159840");
		user.setPhone("18434762767");
		user.setPassword("123");
		user.setCreatedUser("不知名");
		user.setCreatedTime(new Date());
		user.setSex(1);
		mapper.insertUser(user);
		//4.
		ac.close();
	}
	
	@Test
	public void testUpdate() {
		//1.
		AbstractApplicationContext ac = new ClassPathXmlApplicationContext("application-dao.xml");
		//2.
		UserMapper mapper = ac.getBean("userMapper", UserMapper.class);
		//3.
		User user = new User();
		user.setEmail("775159840@qq.com");
		user.setPhone("2312");
		user.setCreatedTime(new Date());
		user.setSex(1);
		user.setId(54);
		mapper.updateUser(user);
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
