package kr.ac.kopo.vo;

public class StockWeightVO {
	private int no;
	private int hart;
	
	private String stock_type;
	private int value;
	private double valuerate;
	
	
	
	
	
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getHart() {
		return hart;
	}
	public void setHart(int hart) {
		this.hart = hart;
	}
	public String getStock_type() {
		return stock_type;
	}
	public void setStock_type(String stock_type) {
		this.stock_type = stock_type;
	}
	public int getValue() {
		return value;
	}
	public void setValue(int value) {
		this.value = value;
	}
	public double getValuerate() {
		return valuerate;
	}
	public void setValuerate(double valuerate) {
		this.valuerate = valuerate;
	}
	@Override
	public String toString() {
		return "StockWeightVO [no=" + no + ", hart=" + hart + ", stock_type=" + stock_type + ", value=" + value
				+ ", valuerate=" + valuerate + "]";
	}
	
	

}
