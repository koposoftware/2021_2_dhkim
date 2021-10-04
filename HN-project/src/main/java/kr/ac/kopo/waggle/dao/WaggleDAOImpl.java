package kr.ac.kopo.waggle.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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

@Repository
public class WaggleDAOImpl implements WaggleDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	/* 가입하기 */
	public void join(WaggleJoinVO waggle) {
		sqlSessionTemplate.insert("waggle.WaggleDAO.join", waggle);
				
	}
	
	/* 가입여부 확인하기 */
	public int joincheck(MemberVO member) {
		int jcheck = sqlSessionTemplate.selectOne("waggle.WaggleDAO.joincheck", member);
		return jcheck;
	}
	
	/* 하트갯수 조회하기 */
	public int heartselect(WaggleJoinVO waggle) {
		int heart = sqlSessionTemplate.selectOne("waggle.WaggleDAO.heartselect", waggle);
		return heart;
	}
	
	/* 와글정보 가져오기 */
	public WaggleJoinVO waggle(MemberVO member) {
		WaggleJoinVO waggleVO =
				sqlSessionTemplate.selectOne("waggle.WaggleDAO.waggle", member);	
		System.out.println(3);
		return waggleVO;
	}
	
	
	public void addHeart(AddHeartVO heartVO) {
		sqlSessionTemplate.insert("waggle.WaggleDAO.addheart",heartVO);
		
	}
	
	
	public void change(CouponVO couponvo) {
		sqlSessionTemplate.insert("waggle.WaggleDAO.change",couponvo);
		
	}
	
	/* 쿠폰조회하기 */
	public List<CouponVO> selectcoupon(int no) {
		List<CouponVO> list = sqlSessionTemplate.selectList("waggle.WaggleDAO.selectcoupon",no);
		return list;
	}
	
	/* 와글 랭킹 리스트 뽑기 */
	public List<RankListVO> wagglerank() {
		List<RankListVO> list =sqlSessionTemplate.selectList("waggle.WaggleDAO.wagglerank");
		return list;
	}
	
	
	public WaggleJoinVO selectaccount(WaggleJoinVO waggle) {
		waggle =sqlSessionTemplate.selectOne("waggle.WaggleDAO.selectaccount",waggle);
		System.out.println("waggleDAO");
		return waggle;
	}
	
	public List<StockWeightVO> stockweigth(WaggleJoinVO waggle) {
		List<StockWeightVO> list =sqlSessionTemplate.selectList("waggle.WaggleDAO.stockweight",waggle);
		System.out.println(1);	
		return list;
			
		}
	
	
	public List<DetailStockTypeVO> typecompany(StockBuySellVO buysell) {
		List<DetailStockTypeVO> list = sqlSessionTemplate.selectList("waggle.WaggleDAO.typecompany",buysell);
		return list;
	}
	
	public RankListVO wagglemyrank(WaggleJoinVO waggle) {
		RankListVO my =sqlSessionTemplate.selectOne("waggle.WaggleDAO.myrank",waggle);
		return my;
	}
	
	/* 계좌번호로 날짜랑 수익률 조회 */
	public List<AccountDailyVO> wagglerateInfo(WaggleJoinVO waggle) {
		List<AccountDailyVO> list=null;
		try{list = sqlSessionTemplate.selectList("waggle.WaggleDAO.selectrate",waggle);
		}
		catch(NullPointerException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	public AccountDailyVO selectbal(WaggleJoinVO waggleVO) {
		AccountDailyVO my =sqlSessionTemplate.selectOne("waggle.WaggleDAO.selectbal",waggleVO);
		return my;
	}
	
	/* 쿠폰사용하기 */
	public void deltecoupon(CouponVO cp) {
		sqlSessionTemplate.delete("waggle.WaggleDAO.deletecoupon",cp);
	}
	

	public List<RankListVO> wagglevalue() {
		List<RankListVO> list = sqlSessionTemplate.selectList("waggle.WaggleDAO.wagglevalue");
		return list;
	}
	
	
	
	public RankListVO mystockvalue(WaggleJoinVO waggle) {
		RankListVO list = sqlSessionTemplate.selectOne("waggle.WaggleDAO.mystockvalue", waggle);
		return list;
	}
}
