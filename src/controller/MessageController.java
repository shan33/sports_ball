package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.util.JSONPObject;
import com.google.gson.JsonObject;

import dao.JoinDAO;
import dao.MessageDAO;
import dao.UserDAO;
import entity.Join;
import entity.Message;
import entity.User;

@Controller
public class MessageController {
	
	MessageDAO dao;
	UserDAO udao;
	JoinDAO jdao;

	public MessageDAO getDao() {
		return dao;
	}
	@Resource
	public void setDao(MessageDAO dao) {
		this.dao = dao;
	}
	
	public UserDAO getUdao() {
		return udao;
	}
	@Resource
	public void setUdao(UserDAO udao) {
		this.udao = udao;
	}
	
	public JoinDAO getJdao() {
		return jdao;
	}
	@Resource
	public void setJdao(JoinDAO jdao) {
		this.jdao = jdao;
	}
	@RequestMapping("/post.do")
	public String post(Message message,HttpServletResponse response)
	{
		System.out.println("**************post.do");
		String data = "0";
		Date date = new Date();
		SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = f.format(date);
		message.setPosttime(time);
		message.setNum(0);
		int id = dao.post(message);
		if(id>0)
		{
			data = Integer.toString(id);
		}
		
		try {
			PrintWriter out = response.getWriter();
			out.print(data);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
	@RequestMapping("/getmessage.do")
	public ModelAndView getMessages(HttpSession session)
	{
		System.out.println("*************************/getMessage.do");
		String uid = (String) session.getAttribute("UID");
		ArrayList<Message> messages = dao.getMessageByUser(Integer.parseInt(uid));
		ModelAndView modelAndView = new ModelAndView("mypost.jsp");
		modelAndView.addObject("messages",messages);
		return modelAndView;
	}
	@RequestMapping("modifymessage.do")
	public ModelAndView modifyMessage(Message message)
	{
		Message oldMessage = dao.getMessage(message.getId());
		ModelAndView modelAndView = new ModelAndView("modify.jsp");
		modelAndView.addObject("message", oldMessage);
		return modelAndView;
	}
	@RequestMapping("modify.do")
	public ModelAndView modify(Message message)
	{
		Date date = new Date();
		SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = f.format(date);
		message.setPosttime(time);
		dao.updateMessage(message);
		ModelAndView modelAndView = new ModelAndView("getmessage.do");
		return modelAndView;
	}
	@RequestMapping("/delete.do")
	public String delete(Message message)
	{
		dao.deleteMessage(message.getId());
		return "mypost.jsp";
	}
	@RequestMapping("/getAllMessages.do")
	public ModelAndView getAllMessages(HttpSession session)
	{
		String uid = (String) session.getAttribute("UID");
		int id = Integer.parseInt(uid);
		ArrayList<Message> messages = dao.getAllMessages();
		ArrayList<Message> joinmessages = dao.getJoinMessage(id);
		System.out.println("*****"+joinmessages);
		System.out.println(messages);
		ModelAndView modelAndView = new ModelAndView("date.jsp");
		modelAndView.addObject("allmessages", messages);
/*		for(int i=0;i<messages.size();i++)
		{
			for(int j=0;j<joinmessages.size();i++)
			{
				if(messages.get(i).getId()==joinmessages.get(j).getId())
				{
					messages.get(i).setIsJoin("1");
					//joinmessages.remove(joinmessages.get(j));
					//break;
					System.out.println("++++++++++++++++"+messages.get(i).getMtitle());
				}
			}
			messages.get(i).setIsJoin("0");
		}*/
		//modelAndView.addObject("joinmessages", joinmessages);
		return modelAndView;
	}
	@RequestMapping("join.do")
	@ResponseBody
	public String addJoin(Join join,HttpSession session)
	{
		System.out.println("****************join.do");
		System.out.println(join);
/*		String uid = (String) session.getAttribute("UID");
		int id = Integer.parseInt(uid);
		join.setUid(id);*/
		Date date = new Date();
		SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = f.format(date);
		join.setJointime(time);
		System.out.println(join);
		int d = jdao.addJoin(join);
		Message message = dao.getMessage(join.getMid());
		message.setNum(message.getNum()+1);
		dao.updateNum(message);
		String data="0";
		data = Integer.toString(d);
		return data;
	}
	@RequestMapping("findjoin.do")
	@ResponseBody
	public ArrayList<Message> myJoinMessages(HttpSession session) 
	{
		String uid = (String) session.getAttribute("UID");
		int id = Integer.parseInt(uid);
		ArrayList<Message> messages = dao.getJoinMessage(id);
		System.out.println("\\\\\\\\\\\\\\\\\\\\\\"+messages);
		return messages;
	}
	
	

}
