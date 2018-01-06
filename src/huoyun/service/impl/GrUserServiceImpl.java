package huoyun.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.qtech.s2shbase.core.dao.BaseDao;
import cn.edu.qtech.s2shbase.core.service.impl.BaseServiceImpl;
import huoyun.dao.T_GrUserDao;
import huoyun.domain.T_GrUser;
import huoyun.domain.T_QyUser;
import huoyun.service.T_GrUserService;
@Service("grUserService")
public class GrUserServiceImpl extends BaseServiceImpl<T_GrUser> implements T_GrUserService {
    @Resource(name="grUserDao")
	T_GrUserDao grUserDao;

	@Override
	public BaseDao getBaseDao() {
		// TODO Auto-generated method stub
		return grUserDao;
	}
	public T_GrUser getByName(String name){
		return grUserDao.getByName(name);
	}
}
