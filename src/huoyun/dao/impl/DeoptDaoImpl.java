package huoyun.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.edu.qtech.s2shbase.core.dao.impl.BaseDaoImpl;
import huoyun.dao.T_DeoptDao;
import huoyun.domain.T_Deopt;

@Repository("depDao")
public class DeoptDaoImpl extends BaseDaoImpl<T_Deopt> implements T_DeoptDao {

	@Override
	public List<T_Deopt> depUserList(Integer userId, Integer u) {
		// TODO Auto-generated method stub
		return null;
	}
}
