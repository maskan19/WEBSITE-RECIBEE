package addr.dao;

import java.sql.SQLException;

import com.ibatis.sqlmap.client.SqlMapClient;

import util.SqlMapUtil;
import vo.AddrVO;

public class AddrDaoImpl implements IAddrDao {
	private SqlMapClient client;
	private static AddrDaoImpl dao;
	
	private AddrDaoImpl() {
		client = SqlMapUtil.getSqlMapClient();
	}
	
	public static AddrDaoImpl getInstance() {
		if(dao == null) dao = new AddrDaoImpl();
		return dao;
	}

	@Override
	public void deleteAddr(AddrVO vo) throws SQLException {
		client.update("addr.deleteAddr", vo);
	}
}
