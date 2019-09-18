package test;

import org.junit.Test;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import bean.Relation;
import bean.User;
import mapper.RelationMapper;
import mapper.UserMapper;
import service.IRelationService;
import service.IUserService;

public class TestRelation {
	/*
	 * 1.测试方法的返回类型为void类型
	 * 2.测试方法的访问修饰符为public
	 * 3.测试方法的参数列表为空
	 */
	
	@Test
	public void testInsert() {
		double result = 1.0;//最终结果
		double j = 1.0;//每次的计算结果 1/3   1*2/3*5 ...
		for(int i=1; j>=0.0005; i++){
			j=i*i/(2*i+1);//每次的计算结果 1/3   1*2/3*5 ...
			if(j <= 0.0005) break; //如果某一项小于0.0005直接跳出循环
			result += j;  //每次的计算结果 1/3+(1*2 / 3*5)+...
		}
		result = result*2; //把那边的2乘过来
		System.out.println(result);
	}
	@Test
	public void testSelect() {
		//1.
		AbstractApplicationContext ac = new ClassPathXmlApplicationContext("application-dao.xml");
		//2.
		RelationMapper mapper = ac.getBean("relationMapper", RelationMapper.class);
		//3.
		System.out.println(mapper.selectIsRelation(48, 48));
		//4.
		ac.close();
	}
	@Test
	public void testSelectAll() {
		//1.
		AbstractApplicationContext ac = new ClassPathXmlApplicationContext("application-dao.xml");
		//2.
		RelationMapper mapper = ac.getBean("relationMapper", RelationMapper.class);
		//3.
		Integer [] all = mapper.selectAll(48);
		for(Integer i:all){
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
		RelationMapper mapper = ac.getBean("relationMapper", RelationMapper.class);
		//3.
		Relation relation = new Relation();
		relation.setUserId(48);
		relation.setFollowId(48);
		mapper.deRelation(relation);
		//4.
		ac.close();
	}
	
	/**
	 * 测试业务层的addUser
	 */
	@Test
	public void testAddUser() {
		AbstractApplicationContext ac = new ClassPathXmlApplicationContext("application-dao.xml","application-service.xml");
		IRelationService service = ac.getBean("relationService", IRelationService.class);
		Relation relation = new Relation();
		relation.setUserId(48);
		relation.setFollowId(48);
		service.relation(relation);
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
