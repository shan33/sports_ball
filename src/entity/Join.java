package entity;

public class Join {
	private int id;
	private int uid;
	private int mid;
	private String jointime;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public String getJointime() {
		return jointime;
	}
	public void setJointime(String jointime) {
		this.jointime = jointime;
	}
	@Override
	public String toString() {
		return "Join [id=" + id + ", uid=" + uid + ", mid=" + mid + ", jointime=" + jointime + "]";
	}
	
	

}
