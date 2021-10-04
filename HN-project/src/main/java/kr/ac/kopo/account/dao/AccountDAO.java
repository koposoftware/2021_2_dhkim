package kr.ac.kopo.account.dao;

import java.util.List;

import kr.ac.kopo.vo.AccountDailyVO;
import kr.ac.kopo.vo.AccountVO;
import kr.ac.kopo.vo.ChangeHeartVO;
import kr.ac.kopo.vo.FollowVO;
import kr.ac.kopo.vo.MemberVO;
import kr.ac.kopo.vo.MyStockVO;
import kr.ac.kopo.vo.StockBuySellVO;
import kr.ac.kopo.vo.WaggleJoinVO;

public interface AccountDAO {

	 List<AccountVO> myaccount(MemberVO member);

	AccountDailyVO dailyaccount(WaggleJoinVO waggle); //계좌수익률 조회하기

	List<MyStockVO> mystocklist(WaggleJoinVO waggle);

	int maxbuy(StockBuySellVO buysell);

	int maxsell(StockBuySellVO buysell);

	List<StockBuySellVO> trans(StockBuySellVO buysell); //매수매도

	int follow(FollowVO follow); //팔로잉하는사람들
	
	int follower(FollowVO follow); //내가 팔로우하는 사람들

	boolean selectfollow(FollowVO follow); //내가 그사람 팔로우 하나요?

	void changeheart(ChangeHeartVO ch);

}
