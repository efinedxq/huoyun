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
@Namespace("/user/")
public class QyUserAction extends ActionSupport implements ModelDriven<T_QyUser> {

	protected Integer pageNum=1; //当前页码
	protected Integer total;//向页面传，共多少条
	protected Integer counts=20;//从页面传，每页条数
	
	protected Integer userType = 0;
	
	protected List<T_QyUser> qyUserList;
	
	protected T_QyUser qyUser;
	
	@Resource(name="qyUserService")
	T_QyUserService qyUserService;
	
	
	/**
	 * 企业用户注册
	 * @return
	 */
	@Action(value="qyRegist", 
			results=@Result(name="success",location="/users/masterPage.jsp"))
    public String qyRegist(){
    	ActionContext ctx = ActionContext.getContext();
		Map session = ctx.getSession();
		T_QyUser user = qyUserService.getByName(qyUser.getName());
		if(user==null){
			String state = (String) qyUserService.save(qyUser);
			session.put("msg", "添加成功");
			userType = 2;
			session.put("userType", userType);
		}
		session.put("msg", "用户名已存在，注册失败。");
		session.put("user", qyUser);
		return SUCCESS;
	}
	/**
	 * qyUserUpdate 企业用户修改个人信息
	 */
	@Action(value="qyUserUpdate",results=@Result(name="success",location="/user/issuInfo.jsp"))
	public String qyUserUpdate(){
		return SUCCESS;
	}
	
	/**
	 * qyUserDel  管理员删除一条企业用户数据
	 */
	@Action(value="qyUserDel",results=@Result(name="success",location="/Manages/manQyUser.jsp"))
	public String qyUserDel(){
		return SUCCESS;
	}
	/**
	 * qyUserList  管理员一次获取 20 条用户数据
	 */
	@Action(value="qyUserList",results=@Result(name="success",location="/Manages/manQyUser.jsp"))
	public String qyUserList(){
		return SUCCESS;
	}
	/**
	 *  qyUserInfo 管理员获取单条用户数据
	 */
	@Action(value="qyUserInfo", results=@Result(name="success",location="/Manages/manQyInfo.jsp"))
	public String qyUserInfo(){
		return SUCCESS;
	}
	/**
	 * qyUserLock 管理员锁定 或 解锁一个用户 
	 */
	@Action(value="qyUserLock",results=@Result(name="success",location="/Manages/manQyUser.jsp"))
	public String qyUserLock(){
		return SUCCESS;
	}
	
	
	@Override
	public T_QyUser getModel() {
		// TODO Auto-generated method stub
		return null;
	}

}
