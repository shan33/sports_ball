package entity;
import java.util.List;

public class Talk {
	
	private int id;
	private String title;
	private String context;
	private String time;
	private int uid;
	private String kind;
	private List<TalkContext> talkContexts;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	
	
	public List<TalkContext> getTalkContexts() {
		return talkContexts;
	}
	public void setTalkContexts(List<TalkContext> talkContexts) {
		this.talkContexts = talkContexts;
	}
	@Override
	public String toString() {
		return "Talk [id=" + id + ", title=" + title + ", context=" + context + ", time=" + time + ", uid=" + uid
				+ ", kind=" + kind + "]";
	}
	
	

}
