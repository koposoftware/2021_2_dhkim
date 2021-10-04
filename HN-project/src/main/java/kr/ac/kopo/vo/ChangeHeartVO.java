package kr.ac.kopo.vo;

public class ChangeHeartVO {
	
	//보내는사람 고객번호
	private int fromno;
	//받는사람 고객번호
	private int tono;
	//하트 갯수
	private int heart;
	
	public int getFromno() {
		return fromno;
	}
	public void setFromno(int fromno) {
		this.fromno = fromno;
	}
	public int getTono() {
		return tono;
	}
	public void setTono(int tono) {
		this.tono = tono;
	}
	public int getHeart() {
		return heart;
	}
	public void setHeart(int heart) {
		this.heart = heart;
	}
	@Override
	public String toString() {
		return "ChangeHeartVO [fromno=" + fromno + ", tono=" + tono + ", heart=" + heart + "]";
	}
	
	

}
