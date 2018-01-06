package huoyun.action;


import java.util.Map;

import javax.annotation.Resource;

import org.apache.catalina.Session;
import org.apache.struts2.convention.annotation.*;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import huoyun.domain.T_GrUser;
import huoyun.domain.T_QyUser;
import huoyun.service.T_GrUserService;
import huoyun.service.T_QyUserService;
import sun.applet.resources.MsgAppletViewer;

@Controller
@Scope("prototype")
@Namespace("/user/")
public class UserLoginAction extends ActionSupport {
    
	private String name;
	private String pass;
	private Integer userType = 0;
	private String msg;
	
	@Resource(name="grUserService")
	T_GrUserService grUserService;
	
	@Resource(name="qyUserService")
	T_QyUserService qyUserService;
	
	/**
	 * 用户登录。先判断用户类型，根据类型查询对象。判断密码是否正确，以及状态是否被锁定。
	 * @return
	 */
	@Action(value="userIn", 
			results=@Result(name="success",location="/users/masterPage.jsp"))
	public String userIn() {
		ActionContext ctx = ActionContext.getContext();
		Map session = ctx.getSession();
		if(userType==1){
		  T_GrUser user = grUserService.getByName(name);
		  if(user.getPass().equals(pass)){
			  session.put("user", user);
			  session.put("userType", userType);
		  }
		  if(user.getLock().equals("锁定")){
			  session.remove(user);
			  msg = "账户被锁定";
		  }
		}else if(userType == 2){
		   T_QyUser user = qyUserService.getByName(name);
		   if(user.getPass().equals(pass)){
			   session.put("user", user);
			   session.put("userType", userType);
		   }
		   if(user.getLock().equals("锁定")){
				  session.remove(user);
				  msg = "账户被锁定";
		   }
		}
		return SUCCESS;
	}
	/**
	 * 注销用户
	 * @return
	 */
	@Action(value="userOut",results=@Result(name="success",location="/users/masterPage.jsp"))
	public String userOut(){
		ActionContext ctx = ActionContext.getContext();
		Map session = ctx.getSession();
		session.clear();
		userType = 0;
		session.put("userType", userType);
		return SUCCESS;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public Integer getUserType() {
		return userType;
	}
	public void setUserType(Integer userType) {
		this.userType = userType;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	
}
