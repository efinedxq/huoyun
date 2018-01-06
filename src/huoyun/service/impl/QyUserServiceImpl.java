package huoyun.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.qtech.s2shbase.core.dao.BaseDao;
import cn.edu.qtech.s2shbase.core.service.impl.BaseServiceImpl;
import huoyun.dao.T_QyUserDao;
import huoyun.domain.T_QyUser;
import huoyun.service.T_QyUserService;

@Service("qyUserService")
public class QyUserServiceImpl extends BaseServiceImpl<T_QyUser> implements T_QyUserService {
    
	@Resource(name="qyUserDao")
	T_QyUserDao qyUserDao;
	
	@Override
	public BaseDao getBaseDao() {
		// TODO Auto-generated method stub
		return qyUserDao;
	}
    
	public T_QyUser getByName(String name){
		return qyUserDao.getByName(name);
	}
}
