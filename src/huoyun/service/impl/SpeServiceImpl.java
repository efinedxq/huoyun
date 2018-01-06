package huoyun.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.qtech.s2shbase.core.dao.BaseDao;
import cn.edu.qtech.s2shbase.core.service.impl.BaseServiceImpl;
import huoyun.dao.T_SpecialDao;
import huoyun.domain.T_Special;
import huoyun.service.T_SpeService;
@Service("speService")
public class SpeServiceImpl extends BaseServiceImpl<T_Special> implements T_SpeService {
    @Resource(name="speDao")
	T_SpecialDao speDao;
	
	@Override
	public BaseDao getBaseDao() {
		// TODO Auto-generated method stub
		return speDao;
	}

}
