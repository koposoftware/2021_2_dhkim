package kr.ac.kopo.vo;

public class WaggleJoinVO {
	
	private int no;
	private String member_id;
	private String nickname;
	private String member_account;
	private int hart;
	private String info_open;
	private int hit;
	
	
	
	
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getMember_account() {
		return member_account;
	}
	public void setMember_account(String member_account) {
		this.member_account = member_account;
	}
	public int getHart() {
		return hart;
	}
	public void setHart(int hart) {
		this.hart = hart;
	}
	public String getInfo_open() {
		return info_open;
	}
	public void setInfo_open(String info_open) {
		this.info_open = info_open;
	}
	@Override
	public String toString() {
		return "WaggleJoinVO [no=" + no + ", member_id=" + member_id + ", nickname=" + nickname + ", member_account="
				+ member_account + ", hart=" + hart + ", info_open=" + info_open + ", hit=" + hit + "]";
	}
	
	
	

}
