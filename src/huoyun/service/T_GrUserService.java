package huoyun.service;

import cn.edu.qtech.s2shbase.core.service.BaseService;
import huoyun.domain.T_GrUser;
import huoyun.domain.T_QyUser;

public interface T_GrUserService extends BaseService<T_GrUser> {
	public T_GrUser getByName(String name);
}
