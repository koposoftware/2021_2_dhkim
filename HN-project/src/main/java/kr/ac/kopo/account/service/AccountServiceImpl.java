package kr.ac.kopo.account.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.account.dao.AccountDAO;
import kr.ac.kopo.vo.AccountDailyVO;
import kr.ac.kopo.vo.AccountVO;
import kr.ac.kopo.vo.ChangeHeartVO;
import kr.ac.kopo.vo.FollowVO;
import kr.ac.kopo.vo.MemberVO;
import kr.ac.kopo.vo.MyStockVO;
import kr.ac.kopo.vo.StockBuySellVO;
import kr.ac.kopo.vo.WaggleJoinVO;

@Service
public class AccountServiceImpl implements AccountService {
	@Autowired
	private AccountDAO dao;
	
	/* 내 계좌 조회하기 */
	public List<AccountVO> myaccount(MemberVO member) {
		List<AccountVO> list= dao.myaccount(member);
		return list;
	}
	
	
	public AccountDailyVO dailyaccount(WaggleJoinVO waggle) {
		AccountDailyVO adailyvo = dao.dailyaccount(waggle);
		return adailyvo;
	}
	
	public List<MyStockVO> mystocklist(WaggleJoinVO waggle) {
		List<MyStockVO> list = dao.mystocklist(waggle);
		return list;
	}
	
	public int maxbuy(StockBuySellVO buysell) {
		int balance = dao.maxbuy(buysell);
		return balance;
	}
	
	public int maxsell(StockBuySellVO buysell) {	
		int stocknum = dao.maxsell(buysell);
	
		return stocknum;
	}

	
	public List<StockBuySellVO> transbuy(StockBuySellVO buysell) {
		buysell.setTra_type("매수");
		List<StockBuySellVO> list = dao.trans(buysell);
		return list;
	}
	
	public List<StockBuySellVO> transsell(StockBuySellVO buysell) {
		buysell.setTra_type("매도");
		List<StockBuySellVO> list = dao.trans(buysell);
		return list;
	}
	
	/* 내가 팔로잉하는 사람들 수 */
	public int follow(FollowVO follow) {
		int fol= dao.follow(follow); 
		return fol;
	}

	/* 나의 팔로워 */
	public int follower(FollowVO follow) {
		int fol =dao.follower(follow);
		return fol;
	}
	
	/* 내가 그사람 팔로우 하는지 */
	public boolean selectfollow(FollowVO follow) {
		boolean bool= dao.selectfollow(follow);
		return bool;
	}
	
	
	public void changeheart(ChangeHeartVO ch) {
		dao.changeheart(ch);
		
	}
}
