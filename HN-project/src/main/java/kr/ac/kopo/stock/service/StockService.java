package kr.ac.kopo.stock.service;

import java.util.List;

import kr.ac.kopo.vo.StockBuySellVO;
import kr.ac.kopo.vo.StockCodeVO;
import kr.ac.kopo.vo.StockInfoVO;
import kr.ac.kopo.vo.StockTodayVO;

public interface StockService {
	
	public List<StockTodayVO> stocktoday();

	public StockCodeVO companyinfo(StockCodeVO stockcode); //타입, 인덱스 가져오는 거
	
	public StockTodayVO stockonetoday(StockTodayVO stocktoday);//한종목 종가, 전일대비 가져오기


	public void stockbuy(StockBuySellVO buysell); //매수하기
	
	public void stocksell(StockBuySellVO buysell); //매도하기

	public List<StockTodayVO> stockline(StockTodayVO st); //주식 라인차트 가져오기


	public List<StockTodayVO> selectcodename();

	public void randomstock(StockBuySellVO bs);

	public StockTodayVO stocksearch(StockTodayVO st);

	public List<StockInfoVO> stockinfo(StockInfoVO si);
	
	public void inserclosepre();

}
