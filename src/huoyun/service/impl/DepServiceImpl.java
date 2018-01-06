package huoyun.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.qtech.s2shbase.core.dao.BaseDao;
import cn.edu.qtech.s2shbase.core.service.impl.BaseServiceImpl;
import huoyun.dao.T_DeoptDao;
import huoyun.domain.T_Deopt;
import huoyun.service.T_DepService;
@Service("depService")
public class DepServiceImpl extends BaseServiceImpl<T_Deopt> implements T_DepService {
 
	@Resource(name="depDao")
	T_DeoptDao depDao; 
	
	@Override
	public BaseDao getBaseDao() {
		// TODO Auto-generated method stub
		return depDao;
	}

}
