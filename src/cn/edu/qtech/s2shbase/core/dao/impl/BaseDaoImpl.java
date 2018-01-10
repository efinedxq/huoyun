package cn.edu.qtech.s2shbase.core.dao.impl;

import java.beans.PropertyDescriptor;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import javax.persistence.EmbeddedId;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.metadata.ClassMetadata;

import cn.edu.qtech.s2shbase.core.dao.BaseDao;

/**
 * Description:底层使用Hibernate4实现，结合书与以下编写http://blog.csdn.net/wjw0130/article/details/51062341
 * 用法：
 * 
 * @Repository(DepartmentDao.DAONAME) public class DepartmentDaoImpl extends
 *                                    BaseDaoImpl<Department> implements
 *                                    DepartmentDao { }
 * @version 1.0
 */
public class BaseDaoImpl<T> implements BaseDao<T> {
	Class entityClazz;
	ClassMetadata classMetadata;

	// DAO组件进行持久化操作底层依赖的SessionFactory组件
	@Resource(name = "sessionFactory")
	private SessionFactory sessionFactory;

	public BaseDaoImpl() {
		Type superclass = this.getClass().getGenericSuperclass();
		ParameterizedType type = (ParameterizedType) superclass;
		Type[] args = type.getActualTypeArguments();
		entityClazz = (Class) ((null != args && args.length > 0) ? args[0] : null);
	}

	/*
	 * 被@PostConstruct修饰的方法会在服务器加载Servle的时候运行，并且只会被服务器执行一次。
	 * PostConstruct在构造函数之后执行,init()方法之前执行。PreDestroy（）方法在destroy()方法执行执行之后执行
	 */
	@PostConstruct
	public void init() {
		this.classMetadata = this.getSessionFactory()//
				.getClassMetadata(entityClazz);
	}

	// 依赖注入SessionFactory所需的setter方法
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public SessionFactory getSessionFactory() {
		return this.sessionFactory;
	}

	public Session getSession() {
		return this.getSessionFactory().getCurrentSession();
	}

	// 根据ID加载实体
	@Override
	@SuppressWarnings("unchecked")
	public T getById(Serializable id) {
		return (T) getSessionFactory().getCurrentSession().get(entityClazz, id);
	}

	// 根据IDs加载多个实体
	/*
	 * @SuppressWarnings("unchecked", "deprecation")
	 * 告诉编译器同时忽略unchecked和deprecation的警告信息。
	 * · @SuppressWarnings(value={"unchecked", "deprecation"})
	 * 等同于@SuppressWarnings("unchecked", "deprecation")
	 */
	@Override
	@SuppressWarnings("unchecked")
	public List<T> getByIds(Serializable[] ids) {

		StringBuilder id = new StringBuilder();
		if (ids != null && ids.length > 0) {
			for (int i = 0; i < ids.length; i++) {
				if (i == ids.length - 1) {
					id.append(ids[i]);
				} else {
					id.append(ids[i]).append(",");
				}
			}
		}

		StringBuilder hql = new StringBuilder();
		hql.append("from " + this.entityClazz.getSimpleName() + " where 1 = 1 ");
		hql.append(" and " + this.classMetadata.getIdentifierPropertyName() + " in(" + id + ")");
		List list = this.getSessionFactory().getCurrentSession().createQuery(hql.toString()).list();
		return list;
	}

	// 保存实体
	@Override
	@SuppressWarnings("unchecked")
	public Serializable save(T entity) {
		return getSessionFactory().getCurrentSession().save(entity);
	}

	// 保存更新实体
	@Override
	public void saveAndUpdate(T dto) {
		try {
			Class clazz = dto.getClass();
			Class superClazz = clazz.getSuperclass();
			Field[] superFields = superClazz.getDeclaredFields();
			Field[] myFields = clazz.getDeclaredFields();
			Field[] allFields = new Field[superFields.length + myFields.length];
			for (int i = 0; i < superFields.length; i++) {
				allFields[i] = superFields[i];
			}
			for (int j = 0; j < myFields.length; j++) {
				allFields[superFields.length + j] = myFields[j];
			}
			for (Field field : allFields) {
				// isAnnotationPresent()
				// 如果一个注解指定注释类型是存在于此元素上此方法返回true，否则返回false
				if (field.isAnnotationPresent(Id.class)) { // 依据标识属性获得持久态对象
					PropertyDescriptor pd = null;
					// 通过调用 getFoo 和 setFoo 存取方法，为符合标准 Java 约定的属性构造一个
					// PropertyDescriptor。
					pd = new PropertyDescriptor(field.getName(), clazz);
					if (pd != null) {
						Method getId = pd.getReadMethod();// 从属性描述器中获取 get 方法
						Object idValue = null;
						idValue = getId.invoke(dto, new Object[] {});
						if (idValue != null) {
							this.updateByDTO(dto);
						} else {
							this.save(dto);
						}
					}
					break;
				} // if
			} // for
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 更新实体
	@Override
	@SuppressWarnings("unchecked")
	public void update(T entity) {
		getSessionFactory().getCurrentSession().saveOrUpdate(entity);
		getSessionFactory().getCurrentSession().flush();
	}

	public void updateByDTO(T dto) {
		try {
			Class clazz = dto.getClass();
			Class superClazz = clazz.getSuperclass();
			Field[] superFields = superClazz.getDeclaredFields();
			Field[] myFields = clazz.getDeclaredFields();
			Field[] allFields = new Field[superFields.length + myFields.length];
			for (int i = 0; i < superFields.length; i++) {
				allFields[i] = superFields[i];
			}
			for (int j = 0; j < myFields.length; j++) {
				allFields[superFields.length + j] = myFields[j];
			}
			for (Field field : allFields) {
				if (field.isAnnotationPresent(Id.class) || field.isAnnotationPresent(EmbeddedId.class)) { // 依据标识属性或者符合主键标识属性获得持久态对象
					PropertyDescriptor pd = null;
					pd = new PropertyDescriptor(field.getName(), clazz);
					if (pd != null) {
						Method getId = pd.getReadMethod();
						Object idValue = null;
						idValue = getId.invoke(dto, new Object[] {});
						if (idValue != null) {
							T entity = (T) this.getById((Serializable) idValue);
							for (Field f : allFields) {
								if (!f.isAnnotationPresent(Id.class) && !f.isAnnotationPresent(ManyToOne.class)
										&& !f.isAnnotationPresent(ManyToMany.class)
										&& !f.isAnnotationPresent(OneToMany.class)
										&& !f.isAnnotationPresent(OneToOne.class)) {// 将dto对象的非标识属性及非关联属性的值赋值到entity对象中
									PropertyDescriptor p = new PropertyDescriptor(f.getName(), clazz);
									// 获得set方法
									Method setMethod = p.getWriteMethod();
									// 获得get方法
									Method getMethod = p.getReadMethod();
									// 赋值
									Object getValue = getMethod.invoke(dto, new Object[] {});
									setMethod.invoke(entity, getValue);
								}
							}
						}
					}
					break;
				} // if
			} // for
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 删除实体
	@Override
	@SuppressWarnings("unchecked")
	public void delete(T entity) {
		getSessionFactory().getCurrentSession().delete(entity);
		// 删除后立即执行，避免删除后再添加时引起的错误：A different object with the same identifier
		// value was already associated with the session
		getSessionFactory().getCurrentSession().flush();
	}

	// 删除多个实体
	@Override
	@SuppressWarnings("unchecked")
	public void deleteByIds(Serializable[] ids) {
		for (int i = 0; i < ids.length; i++) {
			this.deleteById(ids[i]);
		}
	}

	// 根据ID删除实体
	@Override
	@SuppressWarnings("unchecked")
	public void deleteById(Serializable id) {
		// 以下不会调用hibernate session的dao方法,hql不会对级联成员进行删除，因此会报错
		/*
		 * getSessionFactory().getCurrentSession() .createQuery("delete " +
		 * entityClazz.getSimpleName() + " en where en.id = ?0")
		 * .setParameter("0" , id) .executeUpdate();
		 */

		// 使用Session的delete方法可以级联删除组件
		T entity = this.getById(id);
		this.delete(entity);
	}

	// 获取所有实体
	@Override
	@SuppressWarnings("unchecked")
	public List<T> findAll() {
		return findByHql("select en from " + entityClazz.getSimpleName() + " en");
	}

	/**
	 * 按照页数返回所有该对象的所在页列表
	 * 
	 * @param hql
	 *            需要查询的hql语句
	 * @param pageNo
	 *            查询第pageNo页的记录
	 * @param pageSize
	 *            每页需要显示的记录数
	 * @return 当前页的所有记录
	 */
	@Override
	@SuppressWarnings("unchecked")
	public List<T> findAllByPage(int pageNo, int pageSize) {
		// 创建查询 降序查询
		List list =  getSessionFactory().getCurrentSession()
				.createQuery("select en from " + entityClazz.getSimpleName() + " en order by en.id desc").list();
		
		int size = list.size();
		int cnt = pageNo * pageSize;
		if (cnt > size) {
			return list.subList(cnt - pageSize, size);
		} else {
			return list.subList(cnt - pageSize, cnt);
		}
	}

	// 获取实体总数
	@Override
	@SuppressWarnings("unchecked")
	public long findCount() {
		List<?> l = findByHql("select count(*) from " + entityClazz.getSimpleName());
		// 返回查询得到的实体总数
		if (l != null && l.size() == 1) {
			return (Long) l.get(0);
		}
		return 0;
	}

	@Override
	@SuppressWarnings("unchecked")
	public int getCount(Map<String, Object> buildWhere) {
		StringBuilder hql = new StringBuilder();
		/**
		 * 使用select count(1) 报错?
		 */
		hql.append("select count(" + classMetadata.getIdentifierPropertyName() + ") from ");
		String name = entityClazz.getSimpleName();
		hql.append(name);
		hql.append(" where 1 = 1 ");

		/**
		 * 构造 where 1 = 1 and key =:key
		 */
		if (buildWhere != null) {
			for (Entry<String, Object> entry : buildWhere.entrySet()) {
				hql.append(" and " + entry.getKey() + " =:" + entry.getKey());
			}
		}

		Query query = this.getSession().createQuery(hql.toString());

		if (buildWhere != null) {
			for (Entry<String, Object> entry : buildWhere.entrySet()) {
				query.setParameter(entry.getKey(), entry.getValue());
			}
		}

		Long count = (Long) query.uniqueResult();

		return count.intValue();
	}

	// 根据HQL语句查询实体
	@Override
	@SuppressWarnings("unchecked")
	public List<T> findByHql(String hql) {
		return (List<T>) getSessionFactory().getCurrentSession().createQuery(hql).list();
	}

	/**
	 * 使用hql 语句进行实体查询 按id倒序返回
	 */
	public List<T> findByHqlRe(String hql) {
		List list = (List<T>) getSessionFactory().getCurrentSession().createQuery(hql).list();
		list.sort(new Comparator<T>() {
			public int compare(T t1, T t2) {
				return -1;
			}
		});
		return list;
	}

	// 根据带占位符参数HQL语句查询实体
	@Override
	@SuppressWarnings("unchecked")
	// hql形式："from User u where u.userId > ?0"
	public List<T> findByHql(String hql, Object params) {
		// 创建查询
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		// 为包含占位符的HQL语句设置参数
//		for (int i = 0, len = params.length; i < len; i++) {
			query.setParameter(0, params);
//		}
		return (List<T>) query.list();
	}

	/**
	 * 使用hql 语句进行分页查询操作
	 * 
	 * @param hql
	 *            需要查询的hql语句
	 * @param pageNo
	 *            查询第pageNo页的记录
	 * @param pageSize
	 *            每页需要显示的记录数
	 * @return 当前页的所有记录
	 */
	@Override
	@SuppressWarnings("unchecked")
	public List<T> findHqlByPage(String hql, int pageNo, int pageSize) {
		// 创建查询
		List list = this.getSessionFactory().getCurrentSession().createQuery(hql).list();
		int size = list.size();
		int cnt = pageNo * pageSize;
		if (cnt > size) {
			return list.subList(cnt - pageSize, size);
		} else {
			return list.subList(cnt - pageSize, cnt);
		}
	}
    
	/**
	 * 使用hql语句进行 分页查询  自动按id倒序 查询 即查询最新插入的数据
	 */
	public List<T> findHqlByPageRe(String hql, int pageNo, int pageSize){
		List list = findByHqlRe(hql);
		int size = list.size();
		System.out.println("size?"+size);
		int cnt = pageNo * pageSize;
		
		if (cnt > size) {
			System.out.println("cnt>size?"+(cnt-pageSize)+"  "+size);
			return list.subList((cnt-pageSize), size);
		} else {
			System.out.println("cnt<=size?"+(cnt-pageSize)+"  "+cnt);
			return list.subList((cnt-pageSize), cnt);
		}
	}
	/**
	 * 使用hql 语句进行分页查询操作
	 * 
	 * @param hql
	 *            需要查询的hql语句
	 * @param params
	 *            如果hql带占位符参数，params用于传入占位符参数
	 * @param pageNo
	 *            查询第pageNo页的记录
	 * @param pageSize
	 *            每页需要显示的记录数
	 * @return 当前页的所有记录
	 */
	@Override
	@SuppressWarnings("unchecked")
	// hql形式："from User u where u.userId > ?0"
	public List<T> findHqlByPage(String hql, int pageNo, int pageSize, Object... params) {
		// 创建查询
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		// 为包含占位符的HQL语句设置参数
		for (int i = 0, len = params.length; i < len; i++) {
			query.setParameter(i + "", params[i]);
		}
		// 执行分页，并返回查询结果
		return query.setFirstResult((pageNo - 1) * pageSize).setMaxResults(pageSize).list();
	}
	
}
