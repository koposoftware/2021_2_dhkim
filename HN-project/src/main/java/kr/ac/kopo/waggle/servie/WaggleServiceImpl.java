package kr.ac.kopo.waggle.servie;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.vo.AccountDailyVO;
import kr.ac.kopo.vo.AccountVO;
import kr.ac.kopo.vo.AddHeartVO;
import kr.ac.kopo.vo.CouponVO;
import kr.ac.kopo.vo.DetailStockTypeVO;
import kr.ac.kopo.vo.MemberVO;
import kr.ac.kopo.vo.MyStockVO;
import kr.ac.kopo.vo.RankListVO;
import kr.ac.kopo.vo.StockBuySellVO;
import kr.ac.kopo.vo.StockWeightVO;
import kr.ac.kopo.vo.WaggleJoinVO;
import kr.ac.kopo.waggle.dao.WaggleDAO;

@Service
public class WaggleServiceImpl implements WaggleService{
	@Autowired
	private WaggleDAO waggleDAO;
	
	
	/*가입*/
	public void join(WaggleJoinVO waggle) {
		waggleDAO.join(waggle);
		
	}
	
	
	/*가입 여부확인*/
	public boolean joincheck(MemberVO member) {
		boolean bool = false;
		int jcheck = waggleDAO.joincheck(member);
		
		if(jcheck == 1) 
			bool=true;
		return bool;
	}
	
	
	/* 하트조회하기 */
	public int heartselect(WaggleJoinVO waggle) {
		
		int heart = waggleDAO.heartselect(waggle);
		return heart;
	}
	
	
	/* 와글정보 등록하기 */
	public WaggleJoinVO waggle(MemberVO member) {
		
		WaggleJoinVO waggleVO = waggleDAO.waggle(member);
		return waggleVO;
	}

	
	/* 하트충전 */
	public void addHeart(AddHeartVO heart) {
		waggleDAO.addHeart(heart);
		
		
		
	}
	/*쿠폰으로 바꾸기*/
	public void change(CouponVO couponvo) {
	
		
	   couponvo.setCouponname("주식 뽑기 쿠폰");
		waggleDAO.change(couponvo);
		
	}
	
	/*내쿠폰 조회하기*/
	public List<CouponVO> selectcoupon(int no) {
		List<CouponVO> list = waggleDAO.selectcoupon(no);
		return list;
	}
	public List<RankListVO> wagglerank() {
		List<RankListVO> list = waggleDAO.wagglerank();
		return list;
	}
	
	/* 회원번호로 정보가져오기 */
	
	public WaggleJoinVO selectaccount(int no) {
			
			WaggleJoinVO waggle = new WaggleJoinVO();
			waggle.setNo(no);
			
			waggle = waggleDAO.selectaccount(waggle);
		
			return waggle;
		}
	
	
	/* 회원번호로 투자 분류 비중 조회하기 */
	public List<StockWeightVO> wagglerankInfo(WaggleJoinVO waggle) {
			
		List<StockWeightVO> list =waggleDAO.stockweigth(waggle);
		
		return list;
	}
	
	
	public List<DetailStockTypeVO> typecompany(StockBuySellVO buysell) {
			List<DetailStockTypeVO> list =waggleDAO.typecompany(buysell);
			return list;
		}
	
	public RankListVO wagglemyrank(WaggleJoinVO waggle) {
		RankListVO my = waggleDAO.wagglemyrank(waggle);
		return my;
	}
	
	/*계좌번호로 날짜랑 수익률 조회 */
	public List<AccountDailyVO> wagglerateInfo(WaggleJoinVO waggle) {
		List<AccountDailyVO> list = waggleDAO.wagglerateInfo(waggle);
		return list;
	}
	
	public AccountDailyVO selectacc(WaggleJoinVO waggleVO) {
		AccountDailyVO ad =waggleDAO.selectbal(waggleVO);
		return ad;
	}
	
	/* 쿠폰사용하기 */
	public void deletecoupn(CouponVO cp) {
		waggleDAO.deltecoupon(cp);
		
	}
	
	
	
	public List<RankListVO> wagglevalue() {
		List<RankListVO> list = waggleDAO.wagglevalue();
		return list;
	}
	
	
	
	public RankListVO mystockvaluek(WaggleJoinVO waggle) {
		RankListVO list = waggleDAO.mystockvalue(waggle);
		return list;
	}
	}



