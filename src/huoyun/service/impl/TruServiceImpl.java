package huoyun.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.qtech.s2shbase.core.dao.BaseDao;
import cn.edu.qtech.s2shbase.core.service.impl.BaseServiceImpl;
import huoyun.dao.T_TruckDao;
import huoyun.domain.T_Truck;
import huoyun.service.T_TruService;
@Service("truService")
public class TruServiceImpl extends BaseServiceImpl<T_Truck> implements T_TruService {
    
	@Resource(name="truDao")
	T_TruckDao truDao;
	
	@Override
	public BaseDao getBaseDao() {
		// TODO Auto-generated method stub
		return truDao;
	}

}
