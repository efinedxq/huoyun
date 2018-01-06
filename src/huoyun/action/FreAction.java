package huoyun.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.tomcat.util.modeler.FeatureInfo;
import org.hibernate.procedure.internal.Util.ResultClassesResolutionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.sun.corba.se.impl.ior.FreezableList;

import huoyun.domain.T_Deopt;
import huoyun.domain.T_Freight;
import huoyun.domain.T_GrUser;
import huoyun.domain.T_QyUser;
import huoyun.service.T_FreService;
import huoyun.service.T_GrUserService;
import huoyun.service.T_QyUserService;

public class FreAction extends ActionSupport implements ModelDriven<T_Freight> {

	protected Integer pageNo = 1; // 当前页码
	protected Integer total;// 向页面传，共多少条
	protected Integer pageSize = 20;// 从页面传，每页条数

	protected List<T_Freight> freList;

	protected T_Freight fre;
	// 用于标识用户身份 0 不需登陆的大众 1 普通用户 2 企业用户 3 管理员
	protected Integer userType = 0;
	// 管理员提取信息的标识，0 提取全部信息，1提取已审核信息，2提取未审核信息
	protected Integer checkStatu = 0;
	// 用于标识审核 0 取消 1 通过
	protected Integer check = 0;
	// 用户Id，用于保存数据
	protected Integer userId;

	@Resource(name = "freService")
	T_FreService freService;

	@Resource(name = "grUserService")
	T_GrUserService grUserService;

	@Resource(name = "qyUserService")
	T_QyUserService qyUserService;

	/**
	 * freFive 大众获取5条最新数据 已审核数据
	 */
	@Action(value = "freFive", results = @Result(name = "success", type = "chain", location = ""))
	public String freFive() {
		String hql = "from T_Deopt dep order by dep.id desc where dep.auditing like " + "\"已审核\"";
		freList = freService.findHqlByPage(hql, 1, 5);
		return SUCCESS;
	}

	/**
	 * freList 普通用户获取20 条数据 已审核数据
	 */
	@Action(value = "freList", results = @Result(name = "success", location = "/users/freList.jsp"))
	public String freList() {
		String hql = "from T_Deopt dep order by dep.id desc where dep.auditing like " + "\"已审核\"";

		Map buildWhere = new HashMap<String, Object>();
		buildWhere.put("auditing", "已审核");

		total = freService.getCount(buildWhere);
		freList = freService.findHqlByPage(hql, pageNo, pageSize);
		return SUCCESS;
	}

	/**
	 * freUserList 注册用户用于管理 根据Id 获取20 条数据 全部数据
	 */
	@Action(value = "/user/freUserList", results = @Result(name = "success", location = "/users/freUserList.jsp"))
	public String freUserList() {
		if (userType == 2) {
			String hql = "select qyUser.freS from T_QyUser qyUser where qyUser.id = " + userId;
			freList = freService.findHqlByPageRe(hql, pageNo, pageSize);
			total = freService.findByHqlRe(hql).size();

		} else if (userType == 1) {
			String hql = "select grUser.freS from T_GrUser grUser where grUser.id = " + userId;
			freList = freService.findHqlByPageRe(hql, pageNo, pageSize);
			total = freService.findByHqlRe(hql).size();
		}
		return SUCCESS;
	}

	/**
	 * freManList 管理员获取20 条数据 分为已审核 未审核 全部
	 */
	@Action(value = "/man/freManList", results = @Result(name = "success", location = "/manages/manFre.jsp"))
	public String freManList() {
		if (checkStatu == 1) {
			String hql = "from T_Deopt dep order by dep.id desc where auditing like " + "\"已审核\"";

			Map buildWhere = new HashMap<String, Object>();
			buildWhere.put("auditing", "已审核");
			freList = freService.findHqlByPage(hql, pageNo, pageSize);
			total = freService.getCount(buildWhere);
		} else if (checkStatu == 2) {
			String hql = "from T_Deopt dep order by dep.id desc where auditing like " + "\"未审核\"";

			Map buildWhere = new HashMap<String, Object>();
			buildWhere.put("auditing", "未审核");
			freList = freService.findHqlByPage(hql, pageNo, pageSize);
			total = freService.getCount(buildWhere);
		} else {
			freList = freService.findAllByPage(pageNo, pageSize);
			total = (int) freService.findCount();
		}
		return SUCCESS;
	}

	/**
	 * freInfo 获取一条数据
	 */
	@Action(value = "freInfo", results = @Result(name = "success", location = "/users/freInfo.jsp"))
	public String freInfo() {
		fre = freService.getById(fre.getId());
		return SUCCESS;
	}

	/**
	 * freDel 注册用户删除一条数据freList.jsp，管理员删除一条数据manFre.jsp
	 */
	@Action(value = "freDel", results = { @Result(name = "success", location = "/users/freList.jsp"),
			@Result(name = "man", location = "/manages/manFre.jsp") })
	public String freDel() {
		freService.deleteById(fre.getId());
		if (userType == 3) {
			return "man";
		} else {
			return "user";
		}
	}

	/**
	 * freAdd 注册用户添加一条数据
	 */
	@Action(value = "/user/freAdd", results = @Result(name = "success", location = "/users/freUserList.jsp"))
	public String freAdd() {
		freService.save(fre);
		if(userType==1){
			T_GrUser grUser = grUserService.getById(userId);
			grUser.getFreS().add(fre);
			grUserService.save(grUser);
		}else{
			T_QyUser qyUser = qyUserService.getById(userId);
			qyUser.getFreS().add(fre);
			qyUserService.save(qyUser);
		}
		return SUCCESS;
	}

	/**
	 * freCheck 管理员审核一条数据
	 */
	@Action(value = "/man/freCheck", results = @Result(name = "success", location = "/manages/manFre.jsp"))
	public String freCheck() {
        fre = freService.getById(fre.getId());
        if(check==0){
        	fre.setAuditing("未审核");
        }else{
        	fre.setAuditing("已审核");
        }
        freService.update(fre);
		return SUCCESS;
	}

	/**
	 * freUpdate 用户更新一条数据
	 */
	@Action(value = "/user/freUpdate", results = @Result(name = "success", location = "/users/freUserList.jsp"))
	public String freUpdate() {
        freService.update(fre);
		return SUCCESS;
	}

	@Override
	public T_Freight getModel() {
		// TODO Auto-generated method stub
		return null;
	}

	public Integer getPageNo() {
		return pageNo;
	}

	public void setPageNo(Integer pageNo) {
		this.pageNo = pageNo;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public List<T_Freight> getFreList() {
		return freList;
	}

	public void setFreList(List<T_Freight> freList) {
		this.freList = freList;
	}

	public T_Freight getFre() {
		return fre;
	}

	public void setFre(T_Freight fre) {
		this.fre = fre;
	}

	public Integer getUserType() {
		return userType;
	}

	public void setUserType(Integer userType) {
		this.userType = userType;
	}

	public Integer getCheckStatu() {
		return checkStatu;
	}

	public void setCheckStatu(Integer checkStatu) {
		this.checkStatu = checkStatu;
	}

	public Integer getCheck() {
		return check;
	}

	public void setCheck(Integer check) {
		this.check = check;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

}
