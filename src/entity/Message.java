package entity;

import java.util.Date;

public class Message {
	private int id;
	private int muid;
	private int mnum;
	private int mkind;
	private String mtitle;
	private String mcontent;
	private String mplace;
	private String mtime;
	private String posttime;
	private String uname;
	private int num;
	private String isJoin;
	private User user;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getMuid() {
		return muid;
	}
	public void setMuid(int muid) {
		this.muid = muid;
	}
	public int getMnum() {
		return mnum;
	}
	public void setMnum(int mnum) {
		this.mnum = mnum;
	}
	public int getMkind() {
		return mkind;
	}
	public void setMkind(int mkind) {
		this.mkind = mkind;
	}
	public String getMtitle() {
		return mtitle;
	}
	public void setMtitle(String mtitle) {
		this.mtitle = mtitle;
	}
	public String getMcontent() {
		return mcontent;
	}
	public void setMcontent(String mcontent) {
		this.mcontent = mcontent;
	}
	public String getMplace() {
		return mplace;
	}
	public void setMplace(String mplace) {
		this.mplace = mplace;
	}
	
	public String getMtime() {
		return mtime;
	}
	public void setMtime(String mtime) {
		this.mtime = mtime;
	}
	
	public String getPosttime() {
		return posttime;
	}
	public void setPosttime(String posttime) {
		this.posttime = posttime;
	}
	
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getIsJoin() {
		return isJoin;
	}
	public void setIsJoin(String isJoin) {
		this.isJoin = isJoin;
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Override
	public String toString() {
		return "Message [id=" + id + ", muid=" + muid + ", mnum=" + mnum + ", mkind=" + mkind + ", mtitle=" + mtitle
				+ ", mcontent=" + mcontent + ", mplace=" + mplace + ", mtime=" + mtime + "]";
	}
	
	

}
