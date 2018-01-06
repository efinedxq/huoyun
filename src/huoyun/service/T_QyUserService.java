package huoyun.service;

import cn.edu.qtech.s2shbase.core.service.BaseService;
import huoyun.domain.T_QyUser;

public interface T_QyUserService extends BaseService<T_QyUser> {
	public T_QyUser getByName(String name);
}
