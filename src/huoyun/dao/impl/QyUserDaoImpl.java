package huoyun.dao.impl;

import org.springframework.stereotype.Repository;

import cn.edu.qtech.s2shbase.core.dao.impl.BaseDaoImpl;
import huoyun.dao.T_QyUserDao;
import huoyun.domain.T_GrUser;
import huoyun.domain.T_QyUser;
@Repository("qyUserDao")
public class QyUserDaoImpl extends BaseDaoImpl<T_QyUser> implements T_QyUserDao {
    
	/**
	 * 用户登录  
	 * @param name
	 * @return
	 */
    public T_QyUser getByName(String name){
       return (T_QyUser)getSessionFactory().getCurrentSession()
    			.get(T_QyUser.class, name);
    	
    }
    
}
