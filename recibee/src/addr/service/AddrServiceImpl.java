package addr.service;

import java.sql.SQLException;

import addr.dao.AddrDaoImpl;
import addr.dao.IAddrDao;
import vo.AddrVO;

public class AddrServiceImpl implements IAddrService {
	private IAddrDao dao;
	private static AddrServiceImpl service;
	
	private AddrServiceImpl() {
		dao = AddrDaoImpl.getInstance();
	}
	
	public static AddrServiceImpl getInstance() {
		if(service == null) service = new AddrServiceImpl();
		return service;
	}

	@Override
	public void deleteAddr(AddrVO vo) {
		try {
			dao.deleteAddr(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
