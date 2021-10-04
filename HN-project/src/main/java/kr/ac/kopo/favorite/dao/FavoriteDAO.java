package kr.ac.kopo.favorite.dao;

import java.util.List;

import kr.ac.kopo.vo.FollowVO;
import kr.ac.kopo.vo.LikeCompanyVO;
import kr.ac.kopo.vo.PortfolioVO;
import kr.ac.kopo.vo.RankListVO;
import kr.ac.kopo.vo.StockTodayVO;
import kr.ac.kopo.vo.WaggleJoinVO;

public interface FavoriteDAO {
	
	/* 관심등록하기 */
	void insertlike(LikeCompanyVO lc);

	/* 관심종목리스트뽑기 */
	List<StockTodayVO> likecompanylist(WaggleJoinVO waggle);

	/* 팔로우하기 */
	void likeman(FollowVO fl);
	
	/* 포트폴리오좋아요하기 */
	void likeport(PortfolioVO pf);

	/* 내가찜한 포트폴리오 */
	List<PortfolioVO> selectport(PortfolioVO pf);
	
	/* 누구의 포트폴리오인지 몇개종목인지 */
	List<PortfolioVO> selectportname(PortfolioVO pf);
	
	
	/* 내가 픽한 포트폴리오 */
	List<PortfolioVO> selectport2(PortfolioVO pf);
	
	/* 매수해야할 3가지 항목 */
	List<StockTodayVO> recc(PortfolioVO pf);

	/* 포트폴리오 저장횟수 증가시키기 */
	void increport(WaggleJoinVO waggle2);
	
	/* 그사람을 팔로우 하는 사람들 */
	List<FollowVO> selectfollow(FollowVO f2);

	/* 그사람 그만좋아하기 팔로우 끊기 */
	void deletelikeman(FollowVO fl);
	
	/* 관심등록취소 */
	void unlike(LikeCompanyVO lc);

	/* 이기업 관심등록했는지 봐보기 */
	boolean selectcompany(LikeCompanyVO lc); //false는 등록하지않은것.

	StockTodayVO getclose(StockTodayVO st);

	List<FollowVO> follower3();/* 팔로워 최다 3순위 */

	List<RankListVO> myfollower(WaggleJoinVO wj);
	
	List<RankListVO> myfollow(WaggleJoinVO wj);

	void deleteme(FollowVO fl);

	List<StockTodayVO> likecompanycount();

	int mycountcompany(WaggleJoinVO waggle);

	List<StockTodayVO> compayliketype(StockTodayVO st);

	void deletecompan(StockTodayVO st);

	
}
