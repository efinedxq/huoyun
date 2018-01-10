package huoyun.action;

import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.persistence.Table;

import org.apache.struts2.components.Else;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.hibernate.usertype.UserType;
import org.springframework.cglib.transform.impl.InterceptFieldFilter;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.sun.xml.internal.bind.v2.model.core.ID;

import huoyun.domain.T_Deopt;
import huoyun.domain.T_GrUser;
import huoyun.domain.T_QyUser;
import huoyun.service.T_DepService;
import huoyun.service.T_GrUserService;
import huoyun.service.T_QyUserService;

@Controller
@Scope("prototype")
@Namespace("/")
public class DepAction extends ActionSupport implements ModelDriven<T_Deopt> {

	protected Integer pageNo = 1; // 当前页码
	protected Integer total;// 向页面传，共多少条
	protected Integer pageSize = 20;// 从页面传，每页条数
	protected Integer pageCount = 0;

	protected List<T_Deopt> depList;
	protected T_Deopt dep = new T_Deopt();

	// 用于标识用户身份 0 不需登陆的大众 1 普通用户 2 企业用户 3 管理员
	protected Integer userType = 0;
	// 管理员提取信息的标识，0 提取全部信息，1提取已审核信息，2提取未审核信息
	protected Integer checkStatu = 0;
	// 用于标识审核 0 取消 1 通过
	protected Integer check = 0;
	// 用户Id，用于保存数据
	protected Integer userId;

	@Resource(name = "depService")
	T_DepService depService;

	@Resource(name = "grUserService")
	T_GrUserService grUserService;

	@Resource(name = "qyUserService")
	T_QyUserService qyUserService;

	@Override
	public T_Deopt getModel() {
		// TODO Auto-generated method stub
		return dep;
	}

	/*
	 * deoFive.do 一次向页面传五条已审核的数据 action type ="chain"
	 */
	@Action(value = "depFive", results = @Result(name = "success", location = "/users/index.jsp"))
	public String depFive() {
		String hql = "from T_Deopt dep where dep.auditing = 1 order by dep.id desc ";
		depList = depService.findHqlByPage(hql, 1, 5);
		if(depList==null){
			System.out.println("空");
		}
		return SUCCESS;
	}

	/**
	 * depList.do 向页面传递20条数据 返回到 depList.jsp。不登陆的首界面。
	 */
	@Action(value = "depList", results = @Result(name = "user", location = "/users/depList.jsp"))
	public String depList() {
		String hql = "from T_Deopt dep  where auditing = 1 order by dep.id desc";

		Map buildWhere = new HashMap<String, Object>();
		buildWhere.put("auditing", "1");

		depList = depService.findHqlByPage(hql, pageNo, pageSize);
		total = (int) depService.getCount(buildWhere);
		if (total != null) {
			if (total % pageSize == 0) {
				pageCount = total / pageSize;
			} else {
				pageCount = total / pageSize + 1;
			}
		} else {
			total = 0;
			pageCount = 1;
		}
		return "user";
	}

	/**
	 * 注册用户 根据用户id 来寻找其最新发布的信息。要分为企业用户、个人用户。
	 * 
	 * @return
	 */
	@Action(value = "/user/depUserList", results = @Result(name = "success", location = "/users/depUserList.jsp"))
	public String depUserList() {

		userType = (Integer) ActionContext.getContext().getSession().get("userType");
		if (userType == 1) {
			String hql = "select grUser.depS from T_GrUser grUser where grUser.id = " + userId;
			total = depService.findByHqlRe(hql).size();
			depList = depService.findHqlByPageRe(hql, pageNo, pageSize);

		} else if (userType == 2) {
			String hql = "select qyUser.depS from T_QyUser qyUser where qyUser.id = " + userId;
			total = depService.findByHqlRe(hql).size();
			depList = depService.findHqlByPageRe(hql, pageNo, pageSize);
		}
		if (total != null) {
			if (total % pageSize == 0) {
				pageCount = total / pageSize;
			} else {
				pageCount = total / pageSize + 1;
			}
		} else {
			total = 0;
			pageCount = 1;
		}
		return SUCCESS;
	}

	/**
	 * 管理员 管理界面
	 * 
	 * @return
	 */
	@Action(value = "/man/depManList", results = @Result(name = "success", location = "/manages/manDep.jsp"))
	public String depManList() {
		if (checkStatu == 1) {
			String hql = "from T_Deopt dep where auditing =1  order by dep.id desc ";

			Map buildWhere = new HashMap<String, Object>();
			buildWhere.put("auditing", "1");

			depList = depService.findHqlByPage(hql, pageNo, pageSize);
			total = (int) depService.getCount(buildWhere);
		} else if (checkStatu == 2) {
			String hql = "from T_Deopt dep where auditing = 0 order by dep.id desc ";

			Map buildWhere = new HashMap<String, Object>();
			buildWhere.put("auditing", "0");

			depList = depService.findHqlByPage(hql, pageNo, pageSize);
			total = (int) depService.getCount(buildWhere);
		} else {
			depList = depService.findAllByPage(pageNo, pageSize);
			total = (int) depService.findCount();
		}
		if (total != null) {
			if (total % pageSize == 0) {
				pageCount = total / pageSize;
			} else {
				pageCount = total / pageSize + 1;
			}
		} else {
			total = 0;
			pageCount = 1;
		}
		return SUCCESS;
	}

	/*
	 * deoInfo.do 根据id查找一条数据 返回到 depInfo.jsp 所有用户都可以操作，并且操作一样
	 */
	@Action(value = "depInfo", results = @Result(name = "success", location = "/users/depInfo.jsp"))
	public String depInfo() {
		dep = depService.getById(dep.getId());
		return SUCCESS;
	}

	@Action(value = "/user/depModify", results = @Result(name = "success", location = "/users/issuDepMan.jsp"))
	public String depModify() {
		dep = depService.getById(dep.getId());
		return SUCCESS;
	}

	/**
	 * depDel.do 根据id删除一条数据。不登陆的不能操作该项。登陆后三个用户都能操作这个，并且方式一样。
	 */
	@Action(value = "depDel", results = { @Result(name = "user", location = "/users/depUserList.jsp"),
			@Result(name = "man", location = "/manages/manDep.jsp") })
	public String depDel() {
		depService.deleteById(dep.getId());
		userType = (Integer) ActionContext.getContext().getSession().get("userType");
		if (userType == 3) {
			return "man";
		} else {
			return "user";
		}
	}

	/*
	 * depAdd.do 根据用户id 添加一条数据 。不同用户的
	 */
	@Action(value = "/user/depAdd", results = @Result(name = "user", location = "/users/issuDep.jsp"))
	public String depAdd() {
		userType = (Integer) ActionContext.getContext().getSession().get("userType");
		if (userType == 1) {
			depService.save(dep);
			T_GrUser grUser = grUserService.getById(userId);
			grUser.getDepS().add(dep);
			grUserService.update(grUser);
		} else if (userType == 2) {
			depService.save(dep);
			T_QyUser qyUser = qyUserService.getById(userId);
			qyUser.getDepS().add(dep);
			qyUserService.update(qyUser);
		}
		return "user";
	}

	/*
	 * depUpdate.do 修改一条数据 不用根据用户Id 直接保存
	 */
	@Action(value = "/user/depUpdate", results = @Result(name = "user", location = "/users/depUserList.jsp"))
	public String depUpdate() {
		depService.update(dep);
		return "user";
	}

	/*
	 * depCheck.do 管理员 审核一条数据
	 */
	@Action(value = "/man/depCheck", results = @Result(name = "man", location = "/manages/manDep.jsp"))
	public String depCheck() {
		dep = depService.getById(dep.getId());
		dep.setAuditing(check + "");
		depService.update(dep);
		return "man";
	}

	public Integer getTotal() {
		return total;
	}

	public Integer getPageNo() {
		return pageNo;
	}

	public void setPageNo(Integer pageNo) {
		this.pageNo = pageNo;
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

	public Integer getPageCount() {
		return pageCount;
	}

	public void setPageCount(Integer pageCount) {
		this.pageCount = pageCount;
	}

	public List<T_Deopt> getDepList() {
		return depList;
	}

	public void setDepList(List<T_Deopt> depList) {
		this.depList = depList;
	}

	public T_Deopt getDep() {
		return dep;
	}

	public void setDep(T_Deopt dep) {
		this.dep = dep;
	}

}
