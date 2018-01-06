package huoyun.dao.impl;

import org.springframework.stereotype.Repository;

import cn.edu.qtech.s2shbase.core.dao.impl.BaseDaoImpl;
import huoyun.dao.T_JobDao;
import huoyun.domain.T_Job;
@Repository("jobDao")
public class JobDaoImpl extends BaseDaoImpl<T_Job> implements T_JobDao {

}
