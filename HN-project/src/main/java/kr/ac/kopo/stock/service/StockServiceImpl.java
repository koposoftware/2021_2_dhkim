package kr.ac.kopo.stock.service;

import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import kr.ac.kopo.stock.dao.StockDAO;
import kr.ac.kopo.vo.StockBuySellVO;
import kr.ac.kopo.vo.StockCodeVO;
import kr.ac.kopo.vo.StockInfoVO;
import kr.ac.kopo.vo.StockTodayVO;

@Service
public class StockServiceImpl implements StockService {


	@Autowired
	private StockDAO stockdao;

	public List<StockTodayVO> stocktoday(){
		List<StockTodayVO> list = stockdao.stocktoday();
		return list;
	}
	
	public StockCodeVO companyinfo (StockCodeVO stockcode) {
		 stockcode = stockdao.companyinfo(stockcode);
		return stockcode;
	}
	
	public StockTodayVO stockonetoday(StockTodayVO stocktoday) {
		stocktoday = stockdao.stockonetoday(stocktoday);
		return stocktoday;
	}

	/* 매수 */
	public void stockbuy(StockBuySellVO buysell) {
		stockdao.stockbuy(buysell);
	}

	/* 매도 */		
	public void stocksell(StockBuySellVO buysell) {
		stockdao.stocksell(buysell);
	
	}
	
	public List<StockTodayVO> stockline(StockTodayVO st) {
		List<StockTodayVO> list =stockdao.stockline(st);
		return list;
	}
	
	public List<StockTodayVO> selectcodename() {
		List<StockTodayVO> list =stockdao.selectcodename();
		return list;
	}
	
	/* 랜덤주식 */
	public void randomstock(StockBuySellVO bs) {
		stockdao.randomstock(bs);
	}
	
	@Override
	public StockTodayVO stocksearch(StockTodayVO st) {
		StockTodayVO vo =stockdao.stocksearch(st);
		return vo;
	}
	
	
	@Override
	public List<StockInfoVO> stockinfo(StockInfoVO si) {
		List<StockInfoVO> list = stockdao.stockinfo(si);
		return list;
	}
	
	//@Scheduled(cron = "0 00 23 ? * MON-FRI")
	public void inserclosepre(){
		
		
		try {
			String[] aa = stockdao.selectcode();
			for(int i=0; i<aa.length;i++) {
		
				String code=aa[i];
				String URL3="https://finance.naver.com/item/frgn.nhn?code="+code+"&page=1";
				Document doc3;
	
				int close=0;
				int diff=0;
				int volum=0;
				double y_diff =0.0;
				String stockname=null;
				String closedate = null;
		
		try {
			
			doc3 = Jsoup.connect(URL3).get();
			Elements eles3 = doc3.select("#content > div.section.inner_sub > table.type2 > tbody > tr:nth-child(4) > td:nth-child(2) > span");
	
			try{
				
				close = Integer.parseInt(eles3.text().replaceAll(",",""));
			}catch(Exception e) {
				close=Integer.parseInt(eles3.text());
			}
					
			Elements eles4 = doc3.select("#content > div.section.inner_sub > table.type2 > tbody > tr:nth-child(4) > td:nth-child(3) > span");
					
			try{
				
				diff= Integer.parseInt(eles4.text().replaceAll(",",""));
			}catch(Exception e) {
				diff=Integer.parseInt(eles4.text());
			}
			
		
			Elements eles9 = doc3.select("#content > div.section.inner_sub > table.type2 > tbody > tr:nth-child(4) > td:nth-child(4) > span");

			y_diff =Double.parseDouble(eles9.text().replaceAll("%",""));
			
			
			Elements eles5 = doc3.select("#content > div.section.inner_sub > table.type2 > tbody > tr:nth-child(4) > td:nth-child(4) > span");

			String alpha = Character.toString(eles5.text().charAt(0));
			if(alpha.equals("-")) {
				diff=-diff;
				
			}
			
			
			Elements eles8 = doc3.select("#content > div.section.inner_sub > table.type2 > tbody > tr:nth-child(4) > td:nth-child(5) > span");
				try{
				
				volum= Integer.parseInt(eles8.text().replaceAll(",",""));
			}catch(Exception e) {
				volum=Integer.parseInt(eles8.text());
			}
			
			Elements eles6 = doc3.select("#middle > div.h_company > div.wrap_company > h2 > a");
		
			stockname=eles6.text();

			Elements eles7 = doc3.select("#content > div.section.inner_sub > table.type2 > tbody > tr:nth-child(4) > td.tc > span");
			closedate = eles7.text();
			System.out.println(closedate);
			
		}
			
		catch(Exception e) {
			e.printStackTrace();
		}
		StockTodayVO st =new StockTodayVO();
	
		st.setClose_date(closedate);
		st.setStock_code(aa[i]);
		st.setStock_close(close);
		st.setStock_diff(diff);
		st.setStock_name(stockname);
		st.setY_diff(y_diff);
		st.setVolum(volum);
		
		
		stockdao.inserclosepre(st);
		
		Thread.sleep(2000); 
		}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
}
