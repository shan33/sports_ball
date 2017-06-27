package mapper;

import java.util.ArrayList;

import entity.Talk;

public interface TalkMapper {
	
	public int addTalk(Talk talk);
	public ArrayList<Talk> getAllTalks();
	
    public  ArrayList<Talk> getTalksByPage(int start,int end);

}
