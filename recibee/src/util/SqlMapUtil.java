package util;

import java.io.Reader;
import java.nio.charset.Charset;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

public class SqlMapUtil {
	private static SqlMapClient smc;

	static {
		Reader rd = null;
		try {
			Charset charset = Charset.forName("UTF-8");
			Resources.setCharset(charset);

			rd = Resources.getResourceAsReader("sqlMapConfig.xml");

			smc = SqlMapClientBuilder.buildSqlMapClient(rd);
		} catch (Exception e) {
			throw new RuntimeException("SqlMapClient 객체 생성 실패 - " + e.getMessage());
		} finally {
			if (rd != null)
				try {
					rd.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
		}
	}

	public static SqlMapClient getSqlMapClient() {
		return smc;
	}
}
