package kr.ac.kopo.vo;

public class AddHeartVO {
	
	private int heart; //하트 충전 갯수
	private int money; //하트 가격
	private String anum; //잔액출금 계좌
	private int no; //회원 아이디
	
	public int getHeart() {
		return heart;
	}
	public void setHeart(int heart) {
		this.heart = heart;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
	public String getAnum() {
		return anum;
	}
	public void setAnum(String anum) {
		this.anum = anum;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	
	@Override
	public String toString() {
		return "AddHeartVO [heart=" + heart + ", money=" + money + ", anum=" + anum + ", no=" + no + "]";
	}
	
	

}
