package huoyun.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.qtech.s2shbase.core.dao.BaseDao;
import cn.edu.qtech.s2shbase.core.service.impl.BaseServiceImpl;
import huoyun.dao.T_JobDao;
import huoyun.domain.T_Job;
import huoyun.service.T_JobService;
@Service("jobService")
public class JobServiceImpl extends BaseServiceImpl<T_Job> implements T_JobService {
    
	@Resource(name="jobDao")
	T_JobDao jobDao;

	@Override
	public BaseDao getBaseDao() {
		// TODO Auto-generated method stub
		return jobDao;
	}
    
}
