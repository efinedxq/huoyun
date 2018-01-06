package huoyun.dao.impl;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import cn.edu.qtech.s2shbase.core.dao.impl.BaseDaoImpl;
import huoyun.dao.T_NewsDao;
import huoyun.domain.T_News;
@Repository("newsDao")
public class NewsDaoImpl extends BaseDaoImpl<T_News> implements T_NewsDao {

}
