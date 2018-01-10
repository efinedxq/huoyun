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
@Namespace("/")
public class UserLoginAction extends ActionSupport {

	private String name;
	private String pass;
	private Integer userType = 0;
	private String msg;

	@Resource(name = "grUserService")
	T_GrUserService grUserService;

	@Resource(name = "qyUserService")
	T_QyUserService qyUserService;

	/**
	 * 用户登录。先判断用户类型，根据类型查询对象。判断密码是否正确，以及状态是否被锁定。
	 * 
	 * @return
	 */
	@Action(value = "/user/userIn", results = {
			@Result(name = "success", location = "/users/masterPage.jsp")
	})
	public String userIn() {
		
		System.out.println("访问位置：userIn name:"+name+" pass:"+pass);
		
		ActionContext ctx = ActionContext.getContext();
		Map session = ctx.getSession();
		if (userType == 1) {
			T_GrUser user = grUserService.getByName(name);
			if (user == null) {
				msg = "用户不存在";
				return "success";
			}
			if (user.getPass().equals(pass)) {
				session.put("user", user);
				session.put("userType", userType);
			}else{
				msg = "密码不正确";
			}
			if (user.getLocks().equals("锁定")) {
				session.remove(user);
				msg = "账户被锁定";
			}
		} else if (userType == 2) {
			T_QyUser user = qyUserService.getByName(name);
			if (user == null) {
				msg = "用户不存在";
				return "success";
			}
			if (user.getPass().equals(pass)) {
				session.put("user", user);
				session.put("userType", userType);
			}else{
				msg = "密码不正确";
			}
			if (user.getLocks().equals("锁定")) {
				session.remove(user);
				msg = "账户被锁定";
			}
		}
		return SUCCESS;
	}

	/**
	 * 注销用户
	 * 
	 * @return
	 */
	@Action(value = "/user/userOut", results = @Result(name = "success", location = "/users/masterPage.jsp"))
	public String userOut() {
		ActionContext ctx = ActionContext.getContext();
		Map session = ctx.getSession();
		session.clear();
		userType = 0;
		session.put("userType", userType);
		return SUCCESS;
	}
	
    @Action(value="/user/issuInfo",results={
    		@Result(name="success",location="/users/issuInfo.jsp"),
    		@Result(name="error",location="/users/default.jsp")
    })
	public String issuInfo(){
    	ActionContext ctx = ActionContext.getContext();
		Map session = ctx.getSession();
		userType = (Integer) session.get("userType");
		
		System.out.println("访问位置：issuInfo -> userType"+userType);
		if(session.get("user")==null){
			return ERROR;
		}
		if(userType==null||userType==3||userType==0){
			return ERROR;
		}else{
			return SUCCESS;
		}
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
