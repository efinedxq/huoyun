package huoyun.action;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
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
@Namespace("/user/")
public class GrUserAction extends ActionSupport implements ModelDriven<T_GrUser> {
    
	protected Integer pageNum=1; //当前页码
	protected Integer total;//向页面传，共多少条
	protected Integer counts=20;//从页面传，每页条数
	
	protected Integer userType = 0;
	
	protected List<T_GrUser> grUserList;
	
	protected T_GrUser grUser;
	
	@Resource(name="grUserService")
	T_GrUserService grUserService;
	
	//用户注册
	@Action(value="grRegist", 
			results=@Result(name="success",location="/users/masterPage.jsp"))
	public String grRegist(){
		ActionContext ctx = ActionContext.getContext();
		Map session = ctx.getSession();
		T_GrUser user = grUserService.getByName(grUser.getName());
		if(user==null){
			String state = (String) grUserService.save(grUser);
			session.put("msg", "添加成功");
			userType = 1;
			session.put("userType", userType);
		}
		session.put("msg", "用户名已存在，注册失败。");
		session.put("user", grUser);
		return SUCCESS;
	}
	/**
	 * grUserUpdate用户修改个人信息
	 */
	@Action(value="grUserUpdate",results=@Result(name="success",location="/users/issuInfo.jsp"))
	public String  grUserUpdate(){
	    grUserService.update(grUser);	
		return SUCCESS;
	}
	
	/**
	 * grUserList 管理员端  按页获取数据 每页 20 条
	 */
	@Action(value="grUserList",results=@Result(name="success",location="/Manages/manGrUser.jsp"))
    public String grUserList(){
		
    	return SUCCESS;
    }
	/**
	 * grUserLock  锁定或解锁一个用户  根据用户的id
	 */
	@Action(value="grUserLock",results=@Result(name="success",location="/Manages/manGrUser.jsp"))
	public String grUserLock(){
		
		return SUCCESS;
	}
	/**
	 * grUserInfo 管理员 获取一个用户的详细数据
	 */
	@Action(value="grUserInfo",results=@Result(name="success",location="/Manages/manGrInfo.jsp"))
	public String grUserInfo(){
		grUser = grUserService.getById(grUser.getId());
		return SUCCESS;
	}
	/**
	 * grUserDel 管理员删除一条用户数据   由用户id删除 
	 */
	@Action(value="grUserDel",results=@Result(name="success",location="/Manages/manGrUser.jsp"))
	public String grUserDel(){
		grUserService.deleteById(grUser.getId());
		return SUCCESS;
	}
	
	
	@Override
	public T_GrUser getModel() {
		// TODO Auto-generated method stub
		return null;
	}

	public Integer getPageNum() {
		return pageNum;
	}

	public void setPageNum(Integer pageNum) {
		this.pageNum = pageNum;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public Integer getCounts() {
		return counts;
	}

	public void setCounts(Integer counts) {
		this.counts = counts;
	}

	public List<T_GrUser> getGrUserList() {
		return grUserList;
	}

	public void setGrUserList(List<T_GrUser> grUserList) {
		this.grUserList = grUserList;
	}

	public T_GrUser getGrUser() {
		return grUser;
	}

	public void setGrUser(T_GrUser grUser) {
		this.grUser = grUser;
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
   
}
