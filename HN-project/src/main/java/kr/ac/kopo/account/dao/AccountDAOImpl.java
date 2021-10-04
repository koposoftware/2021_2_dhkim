package kr.ac.kopo.account.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.vo.AccountDailyVO;
import kr.ac.kopo.vo.AccountVO;
import kr.ac.kopo.vo.ChangeHeartVO;
import kr.ac.kopo.vo.FollowVO;
import kr.ac.kopo.vo.LikeCompanyVO;
import kr.ac.kopo.vo.MemberVO;
import kr.ac.kopo.vo.MyStockVO;
import kr.ac.kopo.vo.StockBuySellVO;
import kr.ac.kopo.vo.WaggleJoinVO;

@Repository
public class AccountDAOImpl implements AccountDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<AccountVO> myaccount(MemberVO member){
		
		List<AccountVO> list = sqlSessionTemplate.selectList("account.AccountDAO.accountAll", member);
		
		return list;
		
	}
	
	//현금및 주식 총금액과 수익률 가져오기
	public AccountDailyVO dailyaccount(WaggleJoinVO waggle) {
		AccountDailyVO adailyVO = sqlSessionTemplate.selectOne("account.AccountDAO.dailyaccount", waggle);
		return adailyVO;
	}
	
	public List<MyStockVO> mystocklist(WaggleJoinVO waggle) {
		List<MyStockVO> list =  sqlSessionTemplate.selectList("account.AccountDAO.mystocklist", waggle);
		return list;
	}
	
	
	public int maxbuy(StockBuySellVO buysell) {
		int balance = sqlSessionTemplate.selectOne("account.AccountDAO.maxbuy", buysell);
		return balance;
	}
	
	public int maxsell(StockBuySellVO buysell) {
		int stocknum = sqlSessionTemplate.selectOne("account.AccountDAO.maxsell", buysell);
		return stocknum;
	}
	
	public List<StockBuySellVO> trans(StockBuySellVO buysell) {
			List<StockBuySellVO> list = sqlSessionTemplate.selectList("account.AccountDAO.5buysell",buysell);
			return list;
		}
	
		public int follow(FollowVO follow) {
			int fol=0;
			   try{ 
				   fol =sqlSessionTemplate.selectOne("account.AccountDAO.follow",follow); 
			   
			   }catch(NullPointerException e) {
				    fol =0;
			   }
			return fol;
	   	}
   
	   public int follower(FollowVO follow) {
		  int fol=0;
		   try{ 
			   fol =sqlSessionTemplate.selectOne("account.AccountDAO.follower",follow); 
		   
		   }catch(NullPointerException e) {
			    fol =0;
		   }
		return fol;
	   }
	 
		/* 내가 그사람 팔로우하나요? */
	   public boolean selectfollow(FollowVO follow) {
		boolean bool=true;
		try {
			List<FollowVO> list =sqlSessionTemplate.selectOne("account.AccountDAO.selectfollow",follow);
		}catch(Exception e) {
			bool=false;
		}	   
		return bool;
	}
	 
	/* 하트 주고받기 */
	public void changeheart(ChangeHeartVO ch) {
		sqlSessionTemplate.selectOne("account.AccountDAO.changeheart",ch);
		
	}

}
