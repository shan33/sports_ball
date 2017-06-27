package dao;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import entity.Pager;
import entity.Talk;
import mapper.TalkMapper;

@Component
public class TalkDAO {
	TalkMapper mapper;

	public TalkMapper getMapper() {
		return mapper;
	}
	@Resource
	public void setMapper(TalkMapper mapper) {
		this.mapper = mapper;
	}
	
	public int addTalk(Talk talk)
	{
		return mapper.addTalk(talk);
	}
	
	public ArrayList<Talk> getAllTalks()
	{
		return mapper.getAllTalks();
	}
	
	public void computeCount(Pager pager)
	{
		ArrayList<Talk> talks = mapper.getAllTalks();
		if(talks.size()%pager.getPageSize()>0)
		{
			pager.setPageCount(talks.size()/pager.getPageSize()+1);
		}
		else
		{
			pager.setPageCount(talks.size()/pager.getPageSize());	
		}
	}
	
	public ArrayList<Talk> getTalksByPage(Pager pager)
	{
		computeCount(pager);
		int start = (pager.getPageNo()-1)*pager.getPageSize();
		int end = start+pager.getPageSize();
		ArrayList<Talk> talks = mapper.getTalksByPage(start, end);
		return talks;
	}
	
	

}
