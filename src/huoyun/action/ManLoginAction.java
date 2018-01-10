package huoyun.action;

import java.util.Map;

import org.apache.struts2.convention.annotation.*;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import huoyun.domain.T_QyUser;
@Controller
@Scope("prototype")
@Namespace("/")
public class ManLoginAction extends ActionSupport {
    private  String name;
    private  String  pass;
    
    private Integer userType = 0;
    @Action(value="/man/manLogin",results={
    	@Result(name="success",location="/manages/manIndex.jsp"),
        @Result(name="input",location="/users/manageEntry.jsp")})
    public String manLogin() {
		ActionContext ctx = ActionContext.getContext();
		Map session = ctx.getSession();
		if(name.equals("qtech")&&pass.equals("123456qwert")){
			userType = 3;
			session.put("userType", userType);
			return SUCCESS;
		}
		return INPUT;
    }
    
    @Action(value="/man/manOut",results={
        	@Result(name="success",location="/users/manageEntry.jsp")})
    public String manOut(){
    	ActionContext ctx = ActionContext.getContext();
		Map session = ctx.getSession();
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
	
}
