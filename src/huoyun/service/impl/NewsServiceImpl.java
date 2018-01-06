package huoyun.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.qtech.s2shbase.core.dao.BaseDao;
import cn.edu.qtech.s2shbase.core.service.impl.BaseServiceImpl;
import huoyun.dao.T_NewsDao;
import huoyun.domain.T_News;
import huoyun.service.T_NewsService;
@Service("newsService")
public class NewsServiceImpl extends BaseServiceImpl<T_News> implements T_NewsService {
    @Resource(name="newsDao")
	T_NewsDao newsDao;
	@Override
	public BaseDao getBaseDao() {
		// TODO Auto-generated method stub
		return newsDao;
	}
   
}
