package dao;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import entity.User;
import mapper.UserMapper;

@Component
public class UserDAO {
	
	UserMapper mapper;
	public UserMapper getMapper() {
		return mapper;
	}
	@Resource
	public void setMapper(UserMapper mapper) {
		this.mapper = mapper;
	}
	
	public boolean login(User user)
	{
		boolean flag = false;
		if(mapper.isExists(user)>0)
		{
			flag = true;
		}
		return flag;
	}
	
	public void register(User user)
	{
		mapper.addUser(user);
	}
	
	public int getUserId(User user)
	{
		return mapper.getUserId(user);
	}
	
	public void addUserInfo(User user)
	{
		mapper.addUserInfo(user);
	}
	
	public boolean checkName(User user)
	{
		boolean flag = false;
		if(mapper.checkName(user)>0)
		{
			flag = true;
		}
		return flag;
	}
	public User getUser(int id)
	{
		return mapper.getUser(id);
	}

}
