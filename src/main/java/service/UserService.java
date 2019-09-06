package service;

import javax.annotation.Resource;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import bean.User;
import exception.PasswordErrorException;
import exception.UserNotFoundException;
import exception.UsernameAlreadyExistException;
import mapper.UserMapper;

/**
 * t_user用户业务层
 * @author nanshoudabaojian
 *
 */
@Service
public class UserService implements IUserService{
	
	@Resource
	private UserMapper mapper;
	//盐
	@Value("#{config.salt}")
	private String salt;	

	//插入用户
	@Override
	public void addUser(User user) {
		User user1 = mapper.selectByUsername(user.getUsername());
		if(user1 == null) {
			//获取页面密码
			String pwd = user.getPassword();
			//生成的密码密文
			String md5Pwd = DigestUtils.md5Hex(pwd+salt);
			//设置user的密码属性
			user.setPassword(md5Pwd);
			mapper.insertUser(user);
		}else {
			throw new UsernameAlreadyExistException("用户名已经存在");
		}
	}

	@Override
	public User selectByUsername(String username) {
		User user = mapper.selectByUsername(username);
		return user;
	}

	@Override
	public User selectByEmail(String email) {
		User user = mapper.selectByEmail(email);
		return user;
	}

	@Override
	public User checkPhone(String phone) {
		User user = mapper.selectByPhone(phone);
		return user;
	}

	@Override
	public User login(String username, String password) {
		
		//1.调用持久层的方法：selectByUsername(username);返回user对象
		User user= mapper.selectByUsername(username);
		if(user==null){
			//3.抛出异常UserNotFoundException("账号不存在");
			throw new UserNotFoundException("账号不存在");
		}else{
			//4.从user对象中取出密码和参数的password比较
			String md5Pwd =  DigestUtils.md5Hex(password+salt);
			
			if(user.getPassword().equals(md5Pwd)){
			//5.return user;
				return user;
			}else{
				//6.抛出异常PasswordNotMatchException("密码错误")
				throw new PasswordErrorException("密码错误");
			}
		}
	}


}
