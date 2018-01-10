package huoyun.action;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.hibernate.annotations.Check;
import org.apache.struts2.convention.annotation.Namespace;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import huoyun.domain.T_Deopt;
import huoyun.domain.T_GrUser;
import huoyun.domain.T_QyUser;
import huoyun.service.T_DepService;
import huoyun.service.T_GrUserService;

@Controller
@Scope("prototype")
@Namespace("/")
public class GrUserAction extends ActionSupport implements ModelDriven<T_GrUser> {

	protected Integer pageNo = 1; // 当前页码
	protected Integer total;// 向页面传，共多少条
	protected Integer pageSize = 20;// 从页面传，每页条数
	protected Integer pageCount = 0;

	protected Integer userType = 0;
	// 管理员按类别提取用户列表
	protected Integer lockStatu = 0;
	// 管理员锁定用户 0 不锁定 1 锁定
	protected Integer lock = 0;
	protected String msg;
	protected String pass1;

	protected List<T_GrUser> grUserList;

	protected T_GrUser grUser = new T_GrUser();

	@Resource(name = "grUserService")
	T_GrUserService grUserService;

	// 用户注册
	@Action(value = "grRegist", results = @Result(name = "success", location = "/users/regist.jsp"))
	public String grRegist() {
		if (!pass1.equals(grUser.getPass())) {
			msg = "输入密码不一致";
			return SUCCESS;
		}
		T_GrUser user = grUserService.getByName(grUser.getName());
		if (user == null) {
			grUserService.save(grUser);
			msg = "注册成功，请登录";
		} else {
			msg = "用户名已存在，注册失败";
		}
		return SUCCESS;
	}

	/**
	 * grUserUpdate用户修改个人信息
	 */
	@Action(value = "/user/grUserUpdate", results = @Result(name = "success", location = "/users/newPass.jsp"))
	public String grUserUpdate() {
		grUserService.update(grUser);
		return SUCCESS;
	}

	/**
	 * grUserList 管理员端 按页获取数据 每页 20 条
	 */
	@Action(value = "/man/grUserList", results = @Result(name = "success", location = "/manages/manGrUser.jsp"))
	public String grUserList() {
		grUserList = grUserService.findAllByPage(pageNo, pageSize);
		total = (int) grUserService.findCount();
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
	 * grUserLock 锁定或解锁一个用户 根据用户的id
	 */
	@Action(value = "/man/grUserLock", results = @Result(name = "success", location = "/manages/manGrUser.jsp"))
	public String grUserLock() {
		grUserService.update(grUser);
		grUser = grUserService.getById(grUser.getId());
		if (lock == 0) {
			grUser.setLocks("未锁定");
		} else {
			grUser.setLocks("锁定");
		}
		grUserService.update(grUser);
		return SUCCESS;
	}

	/**
	 * grUserInfo 管理员 获取一个用户的详细数据
	 */
	@Action(value = "/man/grUserInfo", results = @Result(name = "success", location = "/manages/manGrInfo.jsp"))
	public String grUserInfo() {
		grUser = grUserService.getById(grUser.getId());
		return SUCCESS;
	}

	/**
	 * grUserDel 管理员删除一条用户数据 由用户id删除
	 */
	@Action(value = "/man/grUserDel", results = @Result(name = "success", location = "/manages/manGrUser.jsp"))
	public String grUserDel() {
		grUserService.deleteById(grUser.getId());
		return SUCCESS;
	}
	
	@Override
	public T_GrUser getModel() {
		// TODO Auto-generated method stub
		return grUser;
	}

	public Integer getPageNo() {
		return pageNo;
	}

	public void setPageNo(Integer pageNo) {
		this.pageNo = pageNo;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public List<T_GrUser> getGrUserList() {
		return grUserList;
	}

	public void setGrUserList(List<T_GrUser> grUserList) {
		this.grUserList = grUserList;
	}

	public T_GrUserService getGrUserService() {
		return grUserService;
	}

	public void setGrUserService(T_GrUserService grUserService) {
		this.grUserService = grUserService;
	}

	public Integer getUserType() {
		return userType;
	}

	public void setUserType(Integer userType) {
		this.userType = userType;
	}

	public Integer getPageCount() {
		return pageCount;
	}

	public void setPageCount(Integer pageCount) {
		this.pageCount = pageCount;
	}

	public Integer getLockStatu() {
		return lockStatu;
	}

	public void setLockStatu(Integer lockStatu) {
		this.lockStatu = lockStatu;
	}

	public Integer getLock() {
		return lock;
	}

	public void setLock(Integer lock) {
		this.lock = lock;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String getPass1() {
		return pass1;
	}

	public void setPass1(String pass1) {
		this.pass1 = pass1;
	}

	public T_GrUser getGrUser() {
		return grUser;
	}

	public void setGrUser(T_GrUser grUser) {
		this.grUser = grUser;
	}

}
