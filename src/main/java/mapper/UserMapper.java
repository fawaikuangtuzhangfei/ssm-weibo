package mapper;

import bean.User;

/**
 * t_user持久层
 * 定义相应的方法:
 * 
 * @author nanshoudabaojian
 *
 */
public interface UserMapper {
	
	/*
	 * 根据用户名查找用户
	 */
	User selectByUsername(String username);
	/*
	 * 查找邮箱是否存在
	 */
	User selectByEmail(String email);
	
	//查看手机号是否存在
	User selectByPhone(String phone);
	
	/**
	 * 插入用户
	 */
	void insertUser(User user);
	
	/**
	 * 更新个人资料
	 */
	void updateUser(User user);
	
	/**
	 * 更新密码
	 * @param user
	 */
	void updatePassword(User user);
	
	/**
	 * 根据id查询用户全部信息
	 * @param id
	 * @return
	 */
	User selectById(Integer id);
}
