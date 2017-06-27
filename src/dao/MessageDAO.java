package dao;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import entity.Message;
import mapper.MessageMapper;

@Component
public class MessageDAO {
	 MessageMapper mapper;

	public MessageMapper getMapper() {
		return mapper;
	}
	@Resource
	public void setMapper(MessageMapper mapper) {
		this.mapper = mapper;
	}
	
	public int post(Message message)
	{
		return mapper.addMessage(message);
	}
	//我的发布
	public ArrayList<Message> getMessageByUser(int uid)
	{
		return mapper.getMessageByUser(uid);
	}
	
	public int updateMessage(Message message)
	{
		return mapper.modifyMessage(message);
	}
	public void deleteMessage(int id)
	{
		mapper.deleteMessage(id);
	}
	
	public Message getMessage(int id)
	{
		return mapper.getMessage(id);
	}
	
	public ArrayList<Message> getAllMessages()
	{
		return mapper.getAllMessage();
	}
	
	public int getNum(int mid)
	{

		return mapper.getNum(mid);
	}
	
	public void updateNum(Message message)
	{
		 mapper.updateNum(message);
	}
	
	public ArrayList<Message> getJoinMessage(int uid)
	{
		return mapper.geJointMessage(uid);
	}
	 

}
