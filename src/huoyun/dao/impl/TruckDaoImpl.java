package huoyun.dao.impl;


import org.springframework.stereotype.Repository;

import cn.edu.qtech.s2shbase.core.dao.impl.BaseDaoImpl;
import huoyun.dao.T_TruckDao;
import huoyun.domain.T_Truck;
@Repository("truDao")
public class TruckDaoImpl extends BaseDaoImpl<T_Truck> implements T_TruckDao {

}
