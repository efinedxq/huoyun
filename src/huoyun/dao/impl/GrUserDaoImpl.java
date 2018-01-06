package huoyun.dao.impl;

import org.springframework.stereotype.Repository;

import cn.edu.qtech.s2shbase.core.dao.impl.BaseDaoImpl;
import huoyun.dao.T_GrUserDao;
import huoyun.domain.T_GrUser;
import huoyun.domain.T_QyUser;
@Repository("grUserDao")
public class GrUserDaoImpl extends BaseDaoImpl<T_GrUser> implements T_GrUserDao {
   
	public T_GrUser getByName(String name){
		return (T_GrUser)getSessionFactory().getCurrentSession()
    			.get(T_GrUser.class, name);
    }
}
