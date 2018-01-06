package cn.edu.qtech.s2shbase.core.service.impl;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import cn.edu.qtech.s2shbase.core.dao.BaseDao;
import cn.edu.qtech.s2shbase.core.service.BaseService;

/**
 * @author 周炜,用法
 *@Service(DepartmentService.SERVICENAME)
	public class DepartmentServiceImpl extends BaseServiceImpl<Department> implements DepartmentService{

		@Resource(name=DepartmentDao.DAONAME)	
		private DepartmentDao departmentDao;
		
		@Override
		public BaseDao getBaseDao() {
			return this.departmentDao;
		}

	}
 * @param <T>
 */
public abstract class BaseServiceImpl<T> implements BaseService<T> {
	
	public abstract BaseDao getBaseDao();//此种实现可提高扩展性 
	
	@Override
	public T getById(Serializable id) {
		return (T)this.getBaseDao().getById(id);
	}

	@Override
	public List<T> getByIds(Serializable[] ids) {
		return this.getBaseDao().getByIds(ids);
	}

	@Override
	public Serializable save(T entity) {
		return this.getBaseDao().save(entity);
	}

	@Override
	public void update(T entity) {
		this.getBaseDao().update(entity);
	}

	@Override
	public void updateByDTO(T dto){
		this.getBaseDao().updateByDTO(dto);
	}
	
	@Override
	public void saveAndUpdate(T dto){
		this.getBaseDao().saveAndUpdate(dto);
	}
	
	@Override
	public void delete(T entity) {
		this.getBaseDao().delete(entity);
	}

	@Override
	public void deleteById(Serializable id) {
		this.getBaseDao().deleteById(id);
	}

	@Override
	public void deleteByIds(Serializable[] ids) {
		this.getBaseDao().deleteByIds(ids);
	}

	@Override
	public List<T> findAll() {
		return this.getBaseDao().findAll();
	}

	@Override
	public List<T> findAllByPage(int pageNo, int pageSize) {
		return this.getBaseDao().findAllByPage(pageNo, pageSize);
	}

	@Override
	public long findCount() {
		return this.getBaseDao().findCount();
	}

	@Override
	public int getCount(Map<String, Object> buildWhere) {
		return this.getBaseDao().getCount(buildWhere);
	}

	@Override
	public List<T> findByHql(String hql) {
		// TODO Auto-generated method stub
		return this.getBaseDao().findByHql(hql);
	}
	@Override
	public List<T> findByHqlRe(String hql) {
		// TODO Auto-generated method stub
		return this.getBaseDao().findByHqlRe(hql);
	}

	@Override
	public List<T> findHqlByPage(String hql, int pageNo, int pageSize) {
		// TODO Auto-generated method stub
		return this.getBaseDao().findHqlByPage(hql, pageNo, pageSize);
	}

	@Override
	public List<T> findHqlByPageRe(String hql, int pageNo, int pageSize) {
		// TODO Auto-generated method stub
		return this.getBaseDao().findHqlByPageRe(hql, pageNo, pageSize);
	}
    
}
