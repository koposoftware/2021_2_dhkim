package kr.ac.kopo.waggle.servie;

import java.util.List;

import kr.ac.kopo.vo.AccountDailyVO;
import kr.ac.kopo.vo.AddHeartVO;
import kr.ac.kopo.vo.CouponVO;
import kr.ac.kopo.vo.DetailStockTypeVO;
import kr.ac.kopo.vo.MemberVO;
import kr.ac.kopo.vo.MyStockVO;
import kr.ac.kopo.vo.RankListVO;
import kr.ac.kopo.vo.StockBuySellVO;
import kr.ac.kopo.vo.StockWeightVO;
import kr.ac.kopo.vo.WaggleJoinVO;

public interface WaggleService {
	
	void join(WaggleJoinVO waggle);//서비스 가입
	boolean joincheck(MemberVO member); //서비스 가입 여부
	int heartselect(WaggleJoinVO waggle);//하트 조회하기
	WaggleJoinVO waggle(MemberVO member); //와글정보 정보가져오기 
	void addHeart(AddHeartVO heart);//하트 결제하기
	void change(CouponVO couponvo); //쿠폰 교환하기
	List<CouponVO> selectcoupon(int no); //내 쿠폰 조회하기
	List<RankListVO> wagglerank();//랭킹리스트 뽑기
	List<StockWeightVO> wagglerankInfo(WaggleJoinVO waggle);
	public WaggleJoinVO selectaccount(int no); //회원번호로 가져오기
	List<DetailStockTypeVO> typecompany(StockBuySellVO buysell);//회원번호로 가져온 보유종목..등 
	RankListVO wagglemyrank(WaggleJoinVO waggle); //나의랭킹정보
	List<AccountDailyVO> wagglerateInfo(WaggleJoinVO waggle);//날짜랑 수익률 조회
	AccountDailyVO selectacc(WaggleJoinVO waggleVO); //계좌잔액조회
	void deletecoupn(CouponVO cp); //쿠폰사용하기
	List<RankListVO> wagglevalue();
	RankListVO mystockvaluek(WaggleJoinVO waggle);
	
}
