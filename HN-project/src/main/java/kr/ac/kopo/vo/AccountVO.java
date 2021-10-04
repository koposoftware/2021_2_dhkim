package kr.ac.kopo.vo;


public class AccountVO {
	private int acc_type;
	private String acc_name;
	private String acc_holder;
	private String member_id;
	private int acc_balance;
	private String acc_num;
	private String acc_password;
	
	
	
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getAcc_type() {
		return acc_type;
	}
	public void setAcc_type(int acc_type) {
		this.acc_type = acc_type;
	}
	public String getAcc_name() {
		return acc_name;
	}
	public void setAcc_name(String acc_name) {
		this.acc_name = acc_name;
	}
	public String getAcc_holder() {
		return acc_holder;
	}
	public void setAcc_holder(String acc_holder) {
		this.acc_holder = acc_holder;
	}
	public int getAcc_balance() {
		return acc_balance;
	}
	public void setAcc_balance(int acc_balance) {
		this.acc_balance = acc_balance;
	}
	public String getAcc_num() {
		return acc_num;
	}
	public void setAcc_num(String acc_num) {
		this.acc_num = acc_num;
	}
	public String getAcc_password() {
		return acc_password;
	}
	public void setAcc_password(String acc_password) {
		this.acc_password = acc_password;
	}
	@Override
	public String toString() {
		return "AccountVO [acc_type=" + acc_type + ", acc_name=" + acc_name + ", acc_holder=" + acc_holder
				+ ", member_id=" + member_id + ", acc_balance=" + acc_balance + ", acc_num=" + acc_num
				+ ", acc_password=" + acc_password + "]";
	}

	
	
	
	
	
}
