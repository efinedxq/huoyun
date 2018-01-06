package huoyun.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import huoyun.domain.T_Freight;
import huoyun.domain.T_Job;
import huoyun.domain.T_QyUser;
import huoyun.service.T_GrUserService;
import huoyun.service.T_JobService;
import huoyun.service.T_QyUserService;

public class JobAction extends ActionSupport implements ModelDriven<T_Job> {

	protected Integer pageNo = 1; // 当前页码
	protected Integer total;// 向页面传，共多少条
	protected Integer pageSize = 20;// 从页面传，每页条数

	protected List<T_Job> jobList;
	protected T_Job job;

	// 用于标识用户身份 0 不需登陆的大众 1 普通用户 2 企业用户 3 管理员
	protected Integer userType = 0;
	// 管理员提取信息的标识，0 提取全部信息，1提取已审核信息，2提取未审核信息
	protected Integer checkStatu = 0;
	// 用于标识审核 0 取消 1 通过
	protected Integer check = 0;
	// 用户Id，用于保存数据
	protected Integer userId;

	@Resource(name = "jobService")
	T_JobService jobService;

	@Resource(name = "qyUserService")
	T_QyUserService qyUserService;

	/**
	 * jobFive 大众获取5条最新数据 已审核数据
	 */
	@Action(value = "jobFive", results = @Result(name = "success", type = "chain", location = "freFive"))
	public String jobFive() {
		String hql = "from T_Job job order by job.id desc where job.auditing like " + "\"已审核\"";

		jobList = jobService.findHqlByPage(hql, 1, 5);

		return SUCCESS;
	}

	/**
	 * jobList 普通用户获取20 条数据 已审核数据
	 */
	@Action(value = "jobList", results = @Result(name = "success", location = "/users/jobList.jsp"))
	public String jobList() {
		String hql = "from T_Job job order by job.id desc where job.auditing like " + "\"已审核\"";

		Map buildWhere = new HashMap<String, Object>();
		buildWhere.put("auditing", "已审核");

		jobList = jobService.findHqlByPage(hql, pageNo, pageSize);
		total = jobService.getCount(buildWhere);
		return SUCCESS;
	}

	/**
	 * jobUserList 企业用户用于管理 获取20 条数据 全部数据
	 */
	@Action(value = "/user/jobUserList", results = @Result(name = "success", location = "/users/jobUserList.jsp"))
	public String jobUserList() {
		String hql = "select qyUser.jobS from T_QyUser qyUser where qyUser.id = "+ userId;
		jobList = jobService.findHqlByPageRe(hql, pageNo, pageSize);
		total =  jobService.findByHqlRe(hql).size();
		return SUCCESS;
	}

	/**
	 * jobManList 管理员获取20 条数据 分为已审核 未审核 全部
	 */
	@Action(value = "/man/jobManList", results = @Result(name = "success", location = "/manages/manJob.jsp"))
	public String jobManList() {
		if (checkStatu == 1) {
			String hql = "from T_Job job order by job.id desc where job.auditing like " + "\"已审核\"";

			Map buildWhere = new HashMap<String, Object>();
			buildWhere.put("auditing", "已审核");

			jobList = jobService.findHqlByPage(hql, pageNo, pageSize);
			total = (int) jobService.getCount(buildWhere);

		} else if (checkStatu == 2) {
			String hql = "from T_Job job order by job.id desc where job.auditing like " + "\"未审核\"";

			Map buildWhere = new HashMap<String, Object>();
			buildWhere.put("auditing", "已审核");

			jobList = jobService.findHqlByPage(hql, pageNo, pageSize);
			total = (int) jobService.getCount(buildWhere);
		} else {
			jobList = jobService.findAllByPage(pageNo, pageSize);
			total = (int) jobService.findCount();
		}
		return SUCCESS;
	}

	/**
	 * jobInfo 获取一条数据
	 */
	@Action(value = "jobInfo", results = @Result(name = "success", location = "/users/jobInfo.jsp"))
	public String jobInfo() {
		job = jobService.getById(job.getId());
		return SUCCESS;
	}

	/**
	 * jobDel 管理员删除一条数据   使用过滤器  一有删除就判断用户权限
	 */
	@Action(value = "jobDel", results = { 
			@Result(name = "user", location = "/users/jobUserList.jsp"),
			@Result(name = "man", location = "/manages/manJob.jsp") })
	public String jobDel() {
		if (userType == 3) {
			jobService.deleteById(job.getId());
			return "man";
		} else {
			jobService.deleteById(job.getId());
			return "user";
		}
	}

	/**
	 * jobAdd 企业用户添加一条数据 可以用Chain 连接到 jobUserList
	 */
	@Action(value = "/user/jobAdd", results = @Result(name = "success", location = "/users/jobUserList.jsp"))
	public String jobAdd() {
        T_QyUser qyUser = qyUserService.getById(userId);
        qyUser.getJobS().add(job);
        jobService.save(job);
        qyUserService.save(qyUser);
		return SUCCESS;
	}

	/**
	 * jobCheck 管理员审核一条数据 可以用Chain 连接到 jobManList
	 */
	@Action(value = "/man/jobCheck", results = @Result(name = "success", location = "/manages/manJob.jsp"))
	public String jobCheck() {
		job = jobService.getById(job.getId());
		if (check == 0) {
			job.setAuditing("未审核");
		}else{
			job.setAuditing("已审核");
		}
		jobService.save(job);
		return SUCCESS;
	}

	/**
	 * jobUpdate 用户更新一条数据 可以用Chain 连接到 jobUserList
	 */
	@Action(value = "/user/jobUpdate", results = @Result(name = "success", location = "/users/jobUserList.jsp"))
	public String jobUpdate() {
		jobService.update(job);
		return SUCCESS;
	}

	@Override
	public T_Job getModel() {
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

	public List<T_Job> getJobList() {
		return jobList;
	}

	public void setJobList(List<T_Job> jobList) {
		this.jobList = jobList;
	}

	public T_Job getJob() {
		return job;
	}

	public void setJob(T_Job job) {
		this.job = job;
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
