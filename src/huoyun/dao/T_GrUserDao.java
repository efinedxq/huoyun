package huoyun.dao;

import cn.edu.qtech.s2shbase.core.dao.BaseDao;
import huoyun.domain.*;
public interface T_GrUserDao extends BaseDao<T_GrUser> {
	public T_GrUser getByName(String name);
} 
