package kr.ac.kopo.vo;

public class FollowVO {
	private String me;
	private String likeman;
	private int count;
	public String getMe() {
		return me;
	}
	public void setMe(String me) {
		this.me = me;
	}
	public String getLikeman() {
		return likeman;
	}
	public void setLikeman(String likeman) {
		this.likeman = likeman;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	@Override
	public String toString() {
		return "FollowVO [me=" + me + ", likeman=" + likeman + ", count=" + count + "]";
	}
	
	
	

	
}
