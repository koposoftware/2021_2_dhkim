package kr.ac.kopo.stock.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.vo.StockBuySellVO;
import kr.ac.kopo.vo.StockCodeVO;
import kr.ac.kopo.vo.StockInfoVO;
import kr.ac.kopo.vo.StockTodayVO;


@Repository
public class StockDAOImpl implements StockDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;


	public List<StockTodayVO> stocktoday() {
		List<StockTodayVO> list = sqlSessionTemplate.selectList("stock.StockDAO.stocktoday");
		return list;
	}
	public StockCodeVO companyinfo(StockCodeVO stockcode) {
		stockcode = sqlSessionTemplate.selectOne("stock.StockDAO.companyinfo",stockcode);

		return stockcode;
	}


	public StockTodayVO stockonetoday(StockTodayVO stocktoday) {
		stocktoday = sqlSessionTemplate.selectOne("stock.StockDAO.stockonetoday",stocktoday);
		return stocktoday;
	}

	public void stockbuy(StockBuySellVO buysell) {
		sqlSessionTemplate.selectOne("stock.StockDAO.stockbuy",buysell);

	}

	public void stocksell(StockBuySellVO buysell) {
		sqlSessionTemplate.selectOne("stock.StockDAO.stocksell",buysell);

	}
	public String[] selectcode() {
		List<String> list = sqlSessionTemplate.selectList("stock.StockDAO.selectcode");
		String[] aa = list.toArray(new String[list.size()]);;
		return aa;
	}
	
	/* 종가그래프 그리기 */
	
	public List<StockTodayVO> stockline(StockTodayVO st) {
		List<StockTodayVO> list =sqlSessionTemplate.selectList("stock.StockDAO.linestock", st);
		return list;
	}
	
	public List<StockTodayVO> selectcodename() {
		List<StockTodayVO> list =sqlSessionTemplate.selectList("stock.StockDAO.selectcodename");
			return list;
		}
	
	
	public void randomstock(StockBuySellVO bs) {
		sqlSessionTemplate.selectOne("stock.StockDAO.randomstock", bs);
		
	}
	

	public StockTodayVO stocksearch(StockTodayVO st) {
		StockTodayVO  le=sqlSessionTemplate.selectOne("stock.StockDAO.stocksearch",st);
		return le;
	}
	
	
	@Override
	public List<StockInfoVO> stockinfo(StockInfoVO si) {
		List<StockInfoVO> list = sqlSessionTemplate.selectList("stock.StockDAO.stockinfo",si);
		return list;
	}

	@Override
	public void inserclosepre(StockTodayVO st) {
		sqlSessionTemplate.insert("stock.StockDAO.insertclose2",st);
		
	}
}
