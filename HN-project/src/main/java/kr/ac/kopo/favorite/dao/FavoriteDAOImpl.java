package kr.ac.kopo.favorite.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.vo.FollowVO;
import kr.ac.kopo.vo.LikeCompanyVO;
import kr.ac.kopo.vo.PortfolioVO;
import kr.ac.kopo.vo.RankListVO;
import kr.ac.kopo.vo.StockTodayVO;
import kr.ac.kopo.vo.WaggleJoinVO;
@Repository
public class FavoriteDAOImpl implements FavoriteDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	/* 관심종목등록하기 */
	public void insertlike(LikeCompanyVO lc) {
		sqlSessionTemplate.insert("favorite.FavoriteDAO.insertlike",lc);
		
	}
	
	/* 관심종목리스트뽑기 */
	public List<StockTodayVO> likecompanylist(WaggleJoinVO waggle) {
		List<StockTodayVO> lc =sqlSessionTemplate.selectList("favorite.FavoriteDAO.companylist",waggle);
		return lc;
		
	}
	
	/* 팔로우하기 */	
	public void likeman(FollowVO fl) {
		sqlSessionTemplate.insert("favorite.FavoriteDAO.likeman",fl);
		
	}
	/* 포트폴리오 좋아요하기 */
	public void likeport(PortfolioVO pf) {
		sqlSessionTemplate.insert("favorite.FavoriteDAO.likeport",pf);
		
	}
	
	/* 내가찜한포트폴리오 */
	public List<PortfolioVO> selectport(PortfolioVO pf) {
		List<PortfolioVO> list= sqlSessionTemplate.selectList("favorite.FavoriteDAO.selectport",pf);
		return list;
	}
	
	/* 누구포트폴리오인지 몇개종목인지 */
	public List<PortfolioVO> selectportname(PortfolioVO pf){
		List<PortfolioVO> list= sqlSessionTemplate.selectList("favorite.FavoriteDAO.selectportname",pf);
		return list;
	}
	
	/* 내가픽한 포트폴리오 */	
	public List<PortfolioVO> selectport2(PortfolioVO pf) {
		List<PortfolioVO> list= sqlSessionTemplate.selectList("favorite.FavoriteDAO.selectport2",pf);
		for(PortfolioVO a : list) {
			System.out.println(a);
		}
		return list;
	}
	
	/* 매수해야할 항목3가지 */	
	public List<StockTodayVO> recc(PortfolioVO pf) {
		List<StockTodayVO> list= sqlSessionTemplate.selectList("favorite.FavoriteDAO.rec",pf);
		return list;
	}
	
	/* 포트폴리오 저장횟수 증가시키기 */
	public void increport(WaggleJoinVO waggle2) {
		sqlSessionTemplate.update("favorite.FavoriteDAO.increport", waggle2);
		
	}
	
	/* 그사람을 팔로우하는사람들 */
	public List<FollowVO> selectfollow(FollowVO f2) {
		List<FollowVO> list =sqlSessionTemplate.selectList("favorite.FavoriteDAO.selectfollower", f2);
		return list;
	}
	
	/* 그사람 그만좋아하기 팔로우 끊기 */
	public void deletelikeman(FollowVO fl) {
		sqlSessionTemplate.delete("favorite.FavoriteDAO.deletefollow",fl);
		
	}
	
	/* 관심등록취소 */
	public void unlike(LikeCompanyVO lc) {
		sqlSessionTemplate.delete("favorite.FavoriteDAO.unlike",lc);
		
	}
	
	/* 이기업 관심등록했는지 봐보기 */
	public boolean selectcompany(LikeCompanyVO lc) {
		
		boolean flag= true;
		try {
			List<LikeCompanyVO> list =sqlSessionTemplate.selectOne("favorite.FavoriteDAO.selectcompany",lc);
		}catch(Exception e){
			flag=false;
		}
		
		
		return flag; 
	}
	
	public StockTodayVO getclose(StockTodayVO st) {
		StockTodayVO st2 =sqlSessionTemplate.selectOne("favorite.FavoriteDAO.getclose", st);
		return st2;
	}
	
	/* 팔로워 최다 3순위 */
	public List<FollowVO> follower3() {
	 List<FollowVO> list = sqlSessionTemplate.selectList("favorite.FavoriteDAO.follower3");
		return list;
	}
	
	
	public List<RankListVO> myfollower(WaggleJoinVO wj) {
	
		List<RankListVO> list = sqlSessionTemplate.selectList("favorite.FavoriteDAO.myfollower",wj);
		System.out.println("DAO"+list);
		return list;
	}
	
	@Override
	public List<RankListVO> myfollow(WaggleJoinVO wj) {
		List<RankListVO> list = sqlSessionTemplate.selectList("favorite.FavoriteDAO.myfollow",wj);
		return list;
	}
	
	
	@Override
	public void deleteme(FollowVO fl) {
		sqlSessionTemplate.delete("favorite.FavoriteDAO.deleteme",fl);
		
	}
	
	/* 최다관심기업3순위 */
	@Override
	public List<StockTodayVO> likecompanycount() {
		List<StockTodayVO> list = sqlSessionTemplate.selectList("favorite.FavoriteDAO.likecompanycount");
		return list;
	}
	
	
	@Override
	public int mycountcompany(WaggleJoinVO waggle) {
		int num = sqlSessionTemplate.selectOne("favorite.FavoriteDAO.mycountcompany",waggle);
		return num;
	}
	
	
	@Override
	public List<StockTodayVO> compayliketype(StockTodayVO st) {
		System.out.println(st);
		List<StockTodayVO> list = sqlSessionTemplate.selectList("favorite.FavoriteDAO.companyliketype",st);
		System.out.println("dao"+list);
		return list;
	}
	
	
	@Override
	public void deletecompan(StockTodayVO st) {
		sqlSessionTemplate.delete("favorite.FavoriteDAO.deletecompan",st);
		
	}
	
}




