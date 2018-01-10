package huoyun.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
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
       Session session = this.getSession();
       String hql = "from T_QyUser qyUser where qyUser.name =:name";
       Query query=session.createQuery(hql);
	   query.setParameter("name", name);
	   List list = query.list();
		if(list.size()>0){
			return (T_QyUser) list.get(0);
		}
		return null;
    }
    
}
