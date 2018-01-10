package huoyun.action;

import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

import huoyun.domain.T_Deopt;
import huoyun.domain.T_Freight;
import huoyun.domain.T_Job;
import huoyun.domain.T_QyUser;
import huoyun.domain.T_Special;
import huoyun.domain.T_Truck;
import huoyun.service.T_DepService;
import huoyun.service.T_FreService;
import huoyun.service.T_JobService;
import huoyun.service.T_QyUserService;
import huoyun.service.T_SpeService;
import huoyun.service.T_TruService;

@Controller
@Scope("prototype")
@Namespace("/")
public class SearchAction extends ActionSupport{
    
	protected Integer type = 0;
	protected Integer keyword = 1;
	protected String keys;
	
	List<T_Freight> freList;
	List<T_Truck> truList;
	List<T_Special> speList;
	List<T_Deopt> depList;
	List<T_Job> jobList;
	List<T_QyUser> comList;
	
	@Resource(name="freService")
	T_FreService freService;
	@Resource(name="truService")	
	T_TruService truService;
	@Resource(name="speService")
	T_SpeService speService;
	@Resource(name="depService")
	T_DepService depService;
	@Resource(name="jobService")
	T_JobService jobService;
	@Resource(name="qyUserService")
	T_QyUserService qyUserService;
	
	private String[] fre={"","start","terminal","freightType","term"};
	private String[] tru={"","start","terminal","truckType","term"};
	private String[] spe={"","start","terminal","bewrite","truckType","term","fBDate"};
	private String[] dep={"","deoptType","depotCity","depotAcreage","depotPrice"};
	private String[] job={"","job","knowledge","fBDate"};
	private String[] com={"","companyName","kind","calling"};
	private String[] tables = {"","T_Freight","T_Truck","T_Deopt","T_Special","T_Job","T_QyUser"};
	
	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public Integer getKeyword() {
		return keyword;
	}

	public void setKeyword(Integer keyword) {
		this.keyword = keyword;
	}

	public String getKeys() {
		return keys;
	}

	public void setKeys(String keys) {
		this.keys = keys;
	}

	public List<T_Freight> getFreList() {
		return freList;
	}

	public void setFreList(List<T_Freight> freList) {
		this.freList = freList;
	}

	public List<T_Truck> getTruList() {
		return truList;
	}

	public void setTruList(List<T_Truck> truList) {
		this.truList = truList;
	}

	public List<T_Special> getSpeList() {
		return speList;
	}

	public void setSpeList(List<T_Special> speList) {
		this.speList = speList;
	}

	public List<T_Deopt> getDepList() {
		return depList;
	}

	public void setDepList(List<T_Deopt> depList) {
		this.depList = depList;
	}

	public List<T_Job> getJobList() {
		return jobList;
	}

	public void setJobList(List<T_Job> jobList) {
		this.jobList = jobList;
	}

	public List<T_QyUser> getComList() {
		return comList;
	}

	public void setComList(List<T_QyUser> comList) {
		this.comList = comList;
	}

	@Action(value="search", results=@Result(name="success", location="/users/searchList.jsp"))
	public String search(){
		String k ="%"+keys+"%";
		Object params = k ;
	
		switch (type) {
		case 1:
			String hql1 = "from "+tables[type]+" where auditing = 1 and "+fre[keyword]+" like ?";
//			freList = freService.findByHql(hql);
			freList = freService.findByHql(hql1, params);
			if(freList==null) {
				System.out.println("空空空");
			}else{
				System.out.println(freList.size());
			}
			break;
		case 2:
			String hql2 = "from "+tables[type]+" where auditing = 1 and "+tru[keyword]+" like ?";
//			truList = truService.findByHql(hql);
			truList = truService.findByHql(hql2, params);
			break;
		case 3:
			String hql3 = "from "+tables[type]+" where auditing = 1 and "+dep[keyword]+" like ?";
			depList = depService.findByHql(hql3, params);
			break;
		case 4:
			String hql4 = "from "+tables[type]+" where auditing = 1 and "+spe[keyword]+" like ?";
			speList = speService.findByHql(hql4, params);
			break;
		case 5:
			String hql5 = "from "+tables[type]+" where auditing = 1 and "+job[keyword]+" like ?";
			jobList = jobService.findByHql(hql5, params);
			break;
		case 6:
			String hql6 = "from "+tables[type]+" where "+com[keyword]+" like ?";
			comList = qyUserService.findByHql(hql6,params);
			if(comList==null) {
				System.out.println("空空空");
			}else{
				System.out.println(comList.size());
			}
			break;
		default:
			break;
		}
		return SUCCESS;
	}
	
	
}
