package huoyun.util;

import java.beans.PropertyDescriptor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;

public class DomainToMap {

	public static Map<String, Object> toMap(Object obj) {
		   return convertBean2Map(obj, null);
	}
	
	private static Map convertBean2Map(Object obj, String[] ignores) {
        Map map = new HashMap();
        Class clazz = obj.getClass();
        List<Field> fieldList = findAllFieldsOfSelfAndSuperClass(clazz);
        Field field = null;
        try {
            for (int i = 0; i < fieldList.size(); i++) {
                field = fieldList.get(i);
                // 定义fieldName是否在拷贝忽略的范畴内
                boolean flag = false;
                if (ignores != null && ignores.length != 0) {
                    flag = isExistOfIgnores(field.getName(), ignores);
                }
                if (!flag) {
                    Object value = getProperty(obj, field.getName());
                    if (null != value
                        && !StringUtils.EMPTY.equals(value.toString())) {
                        map.put(field.getName(),
                            getProperty(obj, field.getName()));
                    }
                }
            }
        } catch (SecurityException e) {
            e.printStackTrace();
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
        }
        return map;
    }
	private static boolean isExistOfIgnores(String fieldName,
		        String[] ignores) {
		        boolean flag = false;
		        for (String str : ignores) {
		            if (str.equals(fieldName)) {
		                flag = true;
		                break;
		            }
		        }
		        return flag;
		    }

	/**
	 * 获取一个类及其父类的全部属性
	 * 
	 * @param clazz
	 * @return
	 */
	private static List<Field> findAllFieldsOfSelfAndSuperClass(Class clazz) {
		Field[] fields = null;
		List fieldList = new ArrayList();
		while (true) {
			if (clazz == null) {
				break;
			} else {
				fields = clazz.getDeclaredFields();
				for (int i = 0; i < fields.length; i++) {
					fieldList.add(fields[i]);
				}
				clazz = clazz.getSuperclass();
			}
		}
		return fieldList;
	}
   
	/**
	 * 获取对象属性的值。首先通过获取属性名，来获取其get方法，若get方法不存在则创建一个get方法。 再调用get方法来获取属性的值
	 */
	private static Object getProperty(Object obj, String propertyName) {
		Class clazz = obj.getClass();// 获取对象的类型
		PropertyDescriptor pd = getPropertyDescriptor(clazz, propertyName);// 获取
																			// clazz
																			// 类型中的
																			// propertyName
																			// 的属性描述器
		Method getMethod = pd.getReadMethod();// 从属性描述器中获取 get 方法
		Object value = null;
		try {
			value = getMethod.invoke(obj, new Object[] {});// 调用方法获取方法的返回值
		} catch (Exception e) {
			e.printStackTrace();
		}
		return value;// 返回值
	}
	private static PropertyDescriptor getPropertyDescriptor(Class clazz,
	        String propertyName) {
	        StringBuffer sb = new StringBuffer();// 构建一个可变字符串用来构建方法名称
	        Method setMethod = null;
	        Method getMethod = null;
	        PropertyDescriptor pd = null;
	        try {
	            Field f = clazz.getDeclaredField(propertyName);// 根据字段名来获取字段
	            if (f != null) {
	                // 构建方法的后缀
	                String methodEnd = propertyName.substring(0, 1).toUpperCase()
	                    + propertyName.substring(1);
	                sb.append("set" + methodEnd);// 构建set方法
	                setMethod = clazz.getDeclaredMethod(sb.toString(),
	                    new Class[] {f.getType()});
	                sb.delete(0, sb.length());// 清空整个可变字符串
	                sb.append("get" + methodEnd);// 构建get方法
	                // 构建get 方法
	                getMethod =
	                    clazz.getDeclaredMethod(sb.toString(), new Class[] {});
	                // 构建一个属性描述器 把对应属性 propertyName 的 get 和 set 方法保存到属性描述器中
	                pd = new PropertyDescriptor(propertyName, getMethod, setMethod);
	            }
	        } catch (Exception ex) {
	            ex.printStackTrace();
	        }
	 
	        return pd;
	    }

	 @SuppressWarnings("unchecked")
	 private static void setProperty(Object obj, String propertyName,
	        Object value) {
	        Class clazz = obj.getClass();// 获取对象的类型
	        PropertyDescriptor pd = getPropertyDescriptor(clazz, propertyName);// 获取 clazz
	                                                                           // 类型中的
	                                                                           // propertyName
	                                                                           // 的属性描述器
	        Method setMethod = pd.getWriteMethod();// 从属性描述器中获取 set 方法
	        try {
	            setMethod.invoke(obj, new Object[] {value});// 调用 set 方法将传入的value值保存属性中去
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }

}
