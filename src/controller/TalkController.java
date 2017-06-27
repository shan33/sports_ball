package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import dao.TalkDAO;
import entity.Pager;
import entity.Talk;
import util.GetTime;

@Controller
public class TalkController {
	TalkDAO dao;

	public TalkDAO getDao() {
		return dao;
	}
	@Resource
	public void setDao(TalkDAO dao) {
		this.dao = dao;
	}
	
	@RequestMapping("/addTalk.do")
	public String addTalk(Talk talk,HttpServletResponse response)
	{
		System.out.println("***********************addTalk.do");
		String data = "0";
		talk.setTime( GetTime.getTime());;
		int id = dao.addTalk(talk);
		System.out.println("**********************"+talk);
		data = Integer.toString(id);
		try {
			PrintWriter out = response.getWriter();
			out.print(data);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
	@RequestMapping("/getAllTalks.do")
	@ResponseBody
	public List<Talk> getAllTalks()
	{
		System.out.println("getAllTalks.do");
		List<Talk> talks = dao.getAllTalks();
		return talks;
	}
	
	@RequestMapping("/getTalksByPage.do")
	@ResponseBody
	public List<Talk> getTalksByPage(Pager pager,HttpServletRequest request)
	{
		if(pager.getPageNo()==0)
		{
			pager.setPageNo(1);
		}
		int page = pager.getPageNo();
		//dao.computeCount(pager);//计算总页数
		List<Talk> talks = dao.getTalksByPage(pager);
		//ArrayList<Talk> talks = new ArrayList<Talk>();
		ModelAndView modelAndView = new ModelAndView("talking.jsp");
		modelAndView.addObject("page", page);
		if(talks.size()>0)
		{
			modelAndView.addObject("TALKS", talks);
			//构建分页按钮
			int btns = pager.getBtnCount();
			btns = btns/2;
			int start = page-btns;
			int end = page+btns;
			if(start<1)
			{
				start = 1;
				end = start+2*btns;
			}
			if(end>pager.getPageCount())
			{
				end = pager.getPageCount();
				start = end-2*btns;
			}
			if(start<1)
			{
				start = 1;
			}
       //打印按钮
			StringBuilder str = new StringBuilder();
			for(int i=start;i<=end;i++)
			{
				str.append("<a href='getTalksByPage.do?pageNo="+i+"'>");
				if(i==page)
				{
					str.append("<font color='red'><b>");
					str.append(i);
					str.append("</b></font>");
				}
				else
				{
					str.append(i);
				}
				str.append("</a>");
				str.append("&nbsp;&nbsp;");
			}
			modelAndView.addObject("NAVBAR", str.toString());
			
		}
		return talks;
	}
		

}
