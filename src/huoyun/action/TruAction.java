package huoyun.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import huoyun.domain.T_GrUser;
import huoyun.domain.T_QyUser;
import huoyun.domain.T_Truck;
import huoyun.service.T_GrUserService;
import huoyun.service.T_QyUserService;
import huoyun.service.T_TruService;

public class TruAction extends ActionSupport implements ModelDriven<T_Truck> {
	protected Integer pageNo = 1; // 当前页码
	protected Integer total;// 向页面传，共多少条
	protected Integer pageSize = 20;// 从页面传，每页条数

	protected T_Truck tru;
	protected List<T_Truck> truList;

	// 用于标识用户身份 0 不需登陆的大众 1 普通用户 2 企业用户 3 管理员
	protected Integer userType = 0;
	// 管理员提取信息的标识，0 提取全部信息，1提取已审核信息，2提取未审核信息
	protected Integer checkStatu = 0;
	// 用于标识审核 0 取消 1 通过
	protected Integer check = 0;
	// 用户Id，用于保存数据
	protected Integer userId;

	@Resource(name = "truService")
	T_TruService truService;

	@Resource(name = "grUserService")
	T_GrUserService grUserService;

	@Resource(name = "qyUserService")
	T_QyUserService qyUserService;

	/**
	 * truFive 大众获取5条最新数据 已审核数据
	 */
	@Action(value = "truFive", results = @Result(name = "success", type = "chain", location = ""))
	public String truFive() {
		String hql = "from T_Deopt dep order by dep.id desc where auditing like \"已审核\"";
		truList = truService.findHqlByPage(hql, 1, 5);
		return SUCCESS;
	}

	/**
	 * truList 普通用户获取20 条数据 已审核数据
	 */
	@Action(value = "truList", results = @Result(name = "success", location = "/users/truList.jsp"))
	public String truList() {
		String hql = "from T_Deopt dep order by dep.id desc where auditing like \"已审核\"";

		Map buildWhere = new HashMap<String, Object>();
		buildWhere.put("auditing", "已审核");
        
		truList = truService.findHqlByPage(hql, pageNo, pageSize);
		total = truService.getCount(buildWhere);
		return SUCCESS;
	}

	/**
	 * truUserList 注册用户用于管理 获取20 条数据 全部数据
	 */
	@Action(value = "/user/truUserList", results = @Result(name = "success", location = "/users/truUserList.jsp"))
	public String truUserList() {
        if(userType==1){
        	String hql = "select grUser.truS from T_GrUser grUser where grUser.id = "+ userId;
			truList = truService.findHqlByPageRe(hql, pageNo, pageSize);
			total = truService.findByHqlRe(hql).size();
        }else if(userType == 2){
        	String hql = "select qyUser.truS from T_QyUser qyUser where qyUser.id = "+ userId;
        	truList = truService.findHqlByPageRe(hql, pageNo, pageSize);
			total = truService.findByHqlRe(hql).size();
        }
		return SUCCESS;
	}

	/**
	 * truManList 管理员获取20 条数据 分为已审核 未审核 全部
	 */
	@Action(value = "/man/truManList", results = @Result(name = "success", location = "/manages/manTru.jsp"))
	public String truManList() {
        if(checkStatu==1){
        	String hql = "from T_Deopt dep order by dep.id desc where auditing like \"已审核\"";

    		Map buildWhere = new HashMap<String, Object>();
    		buildWhere.put("auditing", "已审核");
            
    		truList = truService.findHqlByPage(hql, pageNo, pageSize);
    		total = truService.getCount(buildWhere);
        }else if(checkStatu == 2){
        	String hql = "from T_Deopt dep order by dep.id desc where auditing like \"未审核\"";

    		Map buildWhere = new HashMap<String, Object>();
    		buildWhere.put("auditing", "未审核");
            
    		truList = truService.findHqlByPage(hql, pageNo, pageSize);
    		total = truService.getCount(buildWhere);
        }else{
        	truList = truService.findAllByPage(pageNo, pageSize);
        	total = (int) truService.findCount();
        }
		return SUCCESS;
	}

	/**
	 * truInfo 获取一条数据
	 */
	@Action(value = "truInfo", results = @Result(name = "success", location = "/users/truInfo.jsp"))
	public String truInfo() {
        tru = truService.getById(tru.getId());
		return SUCCESS;
	}

	/**
	 * truDel 管理员删除一条数据
	 */
	@Action(value = "truDel", results = { @Result(name = "user", location = "/users/freUserList.jsp"),
			@Result(name = "man", location = "/manages/manFre.jsp") })
	public String truDel() {
        truService.deleteById(tru.getId());
        if(userType == 3){
        	return "man";
        }else{
        	return "user";
        }
	}

	/**
	 * truAdd 注册用户添加一条数据
	 */
	@Action(value = "/user/truAdd", results = @Result(name = "success", location = "/users/truUserList.jsp"))
	public String truAdd() {
		truService.save(tru);
		if (userType == 1) {
			T_GrUser grUser = grUserService.getById(userId);
			grUser.getTruS().add(tru);
			grUserService.save(grUser);
		} else {
           T_QyUser qyUser = qyUserService.getById(userId);
           qyUser.getTruS().add(tru);
           qyUserService.save(qyUser);
		}
		return SUCCESS;
	}

	/**
	 * truCheck 管理员审核一条数据
	 */
	@Action(value = "/man/truCheck", results = @Result(name = "success", location = "/manages/manTru.jsp"))
	public String truCheck() {
		tru = truService.getById(tru.getId());
		if (check == 0) {
			tru.setAuditing("未审核");
		} else {
			tru.setAuditing("已审核");
		}
		truService.update(tru);
		return SUCCESS;
	}

	/**
	 * truUpdate 用户更新一条数据
	 */
	@Action(value = "/user/truUpdate", results = @Result(name = "success", location = "/users/truUserList.jsp"))
	public String truUpdate() {
		truService.update(tru);
		return SUCCESS;
	}

	@Override
	public T_Truck getModel() {
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

	public T_Truck getTru() {
		return tru;
	}

	public void setTru(T_Truck tru) {
		this.tru = tru;
	}

	public List<T_Truck> getTruList() {
		return truList;
	}

	public void setTruList(List<T_Truck> truList) {
		this.truList = truList;
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
