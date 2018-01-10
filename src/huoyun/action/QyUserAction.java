package huoyun.action;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import huoyun.domain.T_QyUser;
import huoyun.service.T_QyUserService;

@Controller
@Scope("prototype")
@Namespace("/")
public class QyUserAction extends ActionSupport implements ModelDriven<T_QyUser> {

	protected Integer pageNo = 1; // 当前页码
	protected Integer total;// 向页面传，共多少条
	protected Integer pageSize = 20;// 从页面传，每页条数
	protected Integer pageCount = 0;

	protected Integer userType = 0;
	// 管理员按类别获取列表 0 全部 1 未锁定 2 锁定
	protected Integer lockStatu = 0;
	// 管理员设置锁定 0 未锁定 1 锁定
	protected Integer lock = 0;
	protected String msg;
	protected String pass1;

	protected List<T_QyUser> qyUserList;
	// 将参数传递进ModelDriven 表单可以自动添加 但需要new 对象
	// 还是需要set和 get方法 在前台用${qyUser.属性} 调用时需要get方法
	protected T_QyUser qyUser = new T_QyUser();

	@Resource(name = "qyUserService")
	T_QyUserService qyUserService;

	@Action(value = "qyUserFive", results = @Result(name = "success", location = "/users/masterPage.jsp"))
	public String qyUserFive() {
		qyUserList = qyUserService.findAllByPage(1, 5);
		ActionContext.getContext().getSession().put("qyUserList", qyUserList);
		return SUCCESS;
	}

	/**
	 * 企业用户注册
	 * 
	 * @return
	 */
	@Action(value = "qyRegist", results = { @Result(name = "success", location = "/users/regist.jsp") })
	public String qyRegist() {
		if (!pass1.equals(qyUser.getPass())) {
			msg = "输入密码不一致";
			return SUCCESS;
		}
		T_QyUser user = qyUserService.getByName(qyUser.getName());
		if (user == null) {
			qyUserService.save(qyUser);
			msg = "注册成功，请登录";
		} else {
			msg = "用户名已存在，注册失败";
		}
		return SUCCESS;
	}

	/**
	 * qyUserUpdate 企业用户修改个人信息
	 */
	@Action(value = "/user/qyUserUpdate", results = @Result(name = "success", location = "/users/newPass.jsp"))
	public String qyUserUpdate() {
		qyUserService.update(qyUser);
		return SUCCESS;
	}

	/**
	 * qyUserDel 管理员删除一条企业用户数据
	 */
	@Action(value = "/man/qyUserDel", results = @Result(name = "success", location = "/manages/manQyUser.jsp"))
	public String qyUserDel() {
		qyUserService.deleteById(qyUser.getId());
		return SUCCESS;
	}

	/**
	 * qyUserList 管理员一次获取 20 条用户数据
	 */
	@Action(value = "/man/qyUserList", results = @Result(name = "success", location = "/manages/manQyUser.jsp"))
	public String qyUserList() {
		qyUserList = qyUserService.findAllByPage(pageNo, pageSize);
		total = (int) qyUserService.findCount();
		if (total != null) {
			if (total % pageSize == 0) {
				pageCount = total / pageSize;
			} else {
				pageCount = total / pageSize + 1;
			}
		} else {
			pageCount = 1;
			total = 0;
		}
		return SUCCESS;
	}

	/**
	 * comList 大众一次获取 20 条用户数据
	 */
	@Action(value = "comList", results = @Result(name = "success", location = "/users/comList.jsp"))
	public String comList() {
		qyUserList = qyUserService.findAllByPage(pageNo, pageSize);
		total = (int) qyUserService.findCount();
		if (total != null) {
			if (total % pageSize == 0) {
				pageCount = total / pageSize;
			} else {
				pageCount = total / pageSize + 1;
			}
		} else {
			pageCount = 1;
			total = 0;
		}
		return SUCCESS;
	}

	/**
	 * qyUserInfo 管理员获取单条用户数据
	 */
	@Action(value = "qyUserInfo", results = @Result(name = "success", location = "/users/comInfo.jsp"))
	public String qyUserInfo() {

		System.out.println("访问位置：qyUserInfo qyUser.getId()" + qyUser.getId());

		qyUser = qyUserService.getById(qyUser.getId());
		return SUCCESS;
	}

	/**
	 * qyUserLock 管理员锁定 或 解锁一个用户
	 */
	@Action(value = "qyUserLock", results = @Result(name = "success", location = "/manages/manQyUser.jsp"))
	public String qyUserLock() {
		qyUserService.update(qyUser);
		qyUser = qyUserService.getById(qyUser.getId());
		if (lock == 0) {
			qyUser.setLocks("未锁定");
		} else {
			qyUser.setLocks("锁定");
		}
		qyUserService.update(qyUser);
		return SUCCESS;
	}

	@Override
	public T_QyUser getModel() {
		// TODO Auto-generated method stub
		return qyUser;
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

	public Integer getPageCount() {
		return pageCount;
	}

	public void setPageCount(Integer pageCount) {
		this.pageCount = pageCount;
	}

	public Integer getUserType() {
		return userType;
	}

	public void setUserType(Integer userType) {
		this.userType = userType;
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

	public List<T_QyUser> getQyUserList() {
		return qyUserList;
	}

	public void setQyUserList(List<T_QyUser> qyUserList) {
		this.qyUserList = qyUserList;
	}

	public T_QyUser getQyUser() {
		return qyUser;
	}

	public void setQyUser(T_QyUser qyUser) {
		this.qyUser = qyUser;
	}

}
