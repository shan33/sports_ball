package mapper;

import entity.User;

public interface UserMapper {
	
	public int isExists(User user);
	public void addUser(User user);
	public int getUserId(User user);
	public void addUserInfo(User user);	
	public User getUser(int id);
	public int checkName(User user);

}
