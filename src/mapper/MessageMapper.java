package mapper;

import java.util.ArrayList;

import entity.Message;

public interface MessageMapper {
	
	public int addMessage(Message message); 
	//�õ��ҵķ���
	public ArrayList<Message> getMessageByUser(int uid);
	public void deleteMessage(int id);
	public int modifyMessage(Message Message);
	public Message getMessage(int id);
	public ArrayList<Message> getAllMessage();
	public int getNum(int mid);
	public void updateNum(Message message);
	//�õ��ҵĲ���
	public ArrayList<Message> geJointMessage(int uid);

}
