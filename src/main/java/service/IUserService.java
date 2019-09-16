package service;

import bean.User;

public interface IUserService {
	
	/**
	 * 实现用户登录
	 * @param username
	 * @param password
	 * @return ：如果登录成功，返回user对象；
	 * 	登录不成功，抛出异常：账号错误；密码不匹配
	 */
	User login(String username,String password);
	
	/**
	 * 根据用户名查找用户
	 */
	User selectByUsername(String username);
	
	/**
	 * 插入用户
	 */
	void addUser(User user);
	
	/**
	 * 根据邮箱查找用户
	 */
	User selectByEmail(String email);
	
	/**
	 * 验证电话是否存在
	 * @param phone
	 * @return：如果存在，返回user；
	 * 			如果不存在，返回null
	 */
	User checkPhone(String phone);
	
	/**
	 * 更新用户的个人资料
	 * @param id
	 * @return
	 */
	void updateUser(User user);
	
	/**
	 * 根据用户id查询用户全部信息
	 * @param id
	 * @return
	 */
	User selectById(Integer id);
	
}
