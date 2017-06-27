package dao;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import entity.Join;
import mapper.JoinMapper;

@Component
public class JoinDAO {
	JoinMapper mapper;

	public JoinMapper getMapper() {
		return mapper;
	}
	@Resource
	public void setMapper(JoinMapper mapper) {
		this.mapper = mapper;
	}
	
	public int addJoin(Join join)
	{
		return mapper.add(join);
	}
	

}
