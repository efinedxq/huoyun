package huoyun.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.qtech.s2shbase.core.dao.BaseDao;
import cn.edu.qtech.s2shbase.core.service.impl.BaseServiceImpl;
import huoyun.dao.T_FreightDao;
import huoyun.domain.T_Freight;
import huoyun.service.T_FreService;
@Service("freService")
public class FreServiceImpl extends BaseServiceImpl<T_Freight> implements T_FreService {
   
	@Resource(name="freDao")
	T_FreightDao freDao;

	@Override
	public BaseDao getBaseDao() {
		// TODO Auto-generated method stub
		return freDao;
	}
}
