package huoyun.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import huoyun.domain.T_Special;
import huoyun.service.T_QyUserService;
import huoyun.service.T_SpeService;

public class SpeAction extends ActionSupport implements ModelDriven<T_Special> {

	protected Integer pageNo = 1; // 当前页码
	protected Integer total;// 向页面传，共多少条
	protected Integer pageSize = 20;// 从页面传，每页条数
	
	protected List<T_Special> speList;
	protected T_Special spe;
	
	// 用于标识用户身份 0 不需登陆的大众 1 普通用户 2 企业用户 3 管理员
	protected Integer userType = 0;
	// 管理员提取信息的标识，0 提取全部信息，1提取已审核信息，2提取未审核信息
	protected Integer checkStatu = 0;
	// 用于标识审核 0 取消 1 通过
	protected Integer check = 0;
	// 用户Id，用于保存数据
	protected Integer userId;
	
	@Resource(name="speService")
	T_SpeService speService;
	
	@Resource(name = "qyUserService")
	T_QyUserService qyUserService;
	
	/**
	 * speFive 大众获取5条最新数据  已审核数据
	 */
	@Action(value="speFive",results=@Result(name="success", location="/users/masterPage.jsp"))
    public String speFive(){
		String hql = "from T_Special spe order by spe.id desc where spe.auditing like \"已审核\"";
	    speList = speService.findHqlByPageRe(hql, 1, 5);
   	   return SUCCESS;
    }
	/**
	 * speList 普通用户获取20 条数据   已审核数据
	 */
	@Action(value="speList",results=@Result(name="success", location="/users/speList.jsp"))
    public String speList(){
		
		String hql = "from T_Special spe order by spe.id desc where spe.auditing like \"已审核\"";
	    speList = speService.findHqlByPageRe(hql, pageNo, pageSize);
	    
	    Map buildWhere = new HashMap<String, Object>();
		buildWhere.put("auditing", "已审核");

	    total = speService.getCount(buildWhere);
   	    return SUCCESS;
    }
	/**
	 * speUserList 企业用户用于管理  获取20 条数据   全部数据
	 */
	@Action(value="/user/speUserList",results=@Result(name="success", location="/users/speUserList.jsp"))
    public String speUserList(){
		String hql = "select qyUser.speS from T_QyUser qyUser where qyUser.id = "+ userId;
		speList = speService.findHqlByPageRe(hql, pageNo, pageSize);
		total = speService.findByHqlRe(hql).size();
		return SUCCESS;
    }
	/**
	 * speManList 管理员获取20 条数据  分为已审核 未审核 全部
	 */
	@Action(value="/man/speManList",results=@Result(name="success", location="/manages/manSpe.jsp"))
    public String speManList(){
		if(checkStatu==1){
			String hql = "from T_Special spe order by spe.id desc where spe.auditing like \"已审核\"";
		    speList = speService.findHqlByPageRe(hql, pageNo, pageSize);
		    
		    Map buildWhere = new HashMap<String, Object>();
			buildWhere.put("auditing", "已审核");

		    total = speService.getCount(buildWhere);
		}else if(checkStatu == 2){
			String hql = "from T_Special spe order by spe.id desc where spe.auditing like \"未审核\"";
			speList = speService.findHqlByPageRe(hql, pageNo, pageSize);
			
			Map buildWhere = new HashMap<String, Object>();
			buildWhere.put("auditing", "未审核");
			
			total = speService.getCount(buildWhere);
		}else {
			speList = speService.findAllByPage(pageNo, pageSize);
			total = (int) speService.findCount();
		}
   	    return SUCCESS;
    }
	/**
	 * speInfo 获取一条数据
	 */
	@Action(value="speInfo",results=@Result(name="success", location="/users/speInfo.jsp"))
    public String speInfo(){
		spe = speService.getById(spe.getId());
   	   return SUCCESS;
    }
	/**
	 * speDel 管理员删除一条数据
	 */
	@Action(value="speDel",results={
			@Result(name="user", location="/users/speUserList.jsp"),
			@Result(name="man", location="/manages/manSpe.jsp")
	})
    public String speDel(){
	  speService.deleteById(spe.getId());
	  if(userType==3){
		  return "man";
	  }else{
		  return "user";
	  }
    }
	/**
	 * speAdd 企业用户添加一条数据
	 */
	@Action(value="/user/speAdd",results=@Result(name="success", location="/users/jobUserList.jsp"))
    public String speAdd(){
	   speService.save(spe);
   	   return SUCCESS;
    }
	/**
	 * speCheck 管理员审核一条数据
	 */
	@Action(value="/man/speCheck",results=@Result(name="success", location="/manages/manJob.jsp"))
    public String speCheck(){
	   spe = speService.getById(spe.getId());
	   if(check==0){
		   spe.setAuditing("未审核");
	   }else{
		   spe.setAuditing("已审核");
	   }
	   speService.update(spe);
   	   return SUCCESS;
    }
	/**
	 * speUpdate 用户更新一条数据
	 */
	@Action(value="/user/speUpdate",results=@Result(name="success", location="/users/jobUserList.jsp"))
    public String speUpdate(){
         speService.update(spe);		
     	 return SUCCESS;
    }
	
	
	@Override
	public T_Special getModel() {
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
	public List<T_Special> getSpeList() {
		return speList;
	}
	public void setSpeList(List<T_Special> speList) {
		this.speList = speList;
	}
	public T_Special getSpe() {
		return spe;
	}
	public void setSpe(T_Special spe) {
		this.spe = spe;
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
