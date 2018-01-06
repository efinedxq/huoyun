package huoyun.dao;

import cn.edu.qtech.s2shbase.core.dao.BaseDao;
import huoyun.domain.T_QyUser;

public interface T_QyUserDao extends BaseDao<T_QyUser> {
	public T_QyUser getByName(String name);
}
