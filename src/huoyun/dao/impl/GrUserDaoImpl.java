package huoyun.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import cn.edu.qtech.s2shbase.core.dao.impl.BaseDaoImpl;
import huoyun.dao.T_GrUserDao;
import huoyun.domain.T_GrUser;
import huoyun.domain.T_QyUser;

@Repository("grUserDao")
public class GrUserDaoImpl extends BaseDaoImpl<T_GrUser> implements T_GrUserDao {

	public T_GrUser getByName(String name) {
		Session session = this.getSession();
		String hql = "from T_GrUser grUser where grUser.name =:name";
		Query query = session.createQuery(hql);
		query.setParameter("name", name);
		List list = query.list();
		if (list.size() > 0) {
			return (T_GrUser) list.get(0);
		}
		return null;
	}
}
