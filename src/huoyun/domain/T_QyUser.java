package huoyun.domain;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Generated;
import org.hibernate.annotations.GenerationTime;

@Entity
@Table(name="T_QyUser")
public class T_QyUser {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;	//会员编号
	private String userName;	//登陆名
	private String userPass;	//密码
	private String passQuestion;	//密码提示问题
	private String passSolution;	//密码提示答案
	private String linkman;	//联系人
	private String companyName;	//企业名称
	private String kind;	//企业性质
	private String calling;	//所属行业
	private String licenceNumber;	//营业执照号
	private String address;	//地址
	private String phone;	//联系方式
	private String fax;	//传真
	private String email;	//电子邮件
	private String networkIP;	//网址
	private String content;	//企业简介
	@Generated(GenerationTime.INSERT)  //设置默认值
	private String locks ;	//锁定状态
	@Generated(GenerationTime.INSERT)  //设置默认值
	private String lockCause ;	//锁定原因

	@OneToMany(targetEntity = T_Freight.class)
	@JoinTable(name = "qy_fre", joinColumns = @JoinColumn(name = "id", referencedColumnName = "id"), inverseJoinColumns = @JoinColumn(name = "id", referencedColumnName = "id"))
	private Set<T_Freight> freS = new HashSet<>();

	@OneToMany(targetEntity = T_Deopt.class)
	@JoinTable(name = "qy_dep", joinColumns = @JoinColumn(name = "id", referencedColumnName = "id"), inverseJoinColumns = @JoinColumn(name = "id", referencedColumnName = "id"))
	private Set<T_Deopt> depS = new HashSet<>();
	
	@OneToMany(targetEntity = T_Truck.class)
	@JoinTable(name = "qy_tru", joinColumns = @JoinColumn(name = "id", referencedColumnName = "id"), inverseJoinColumns = @JoinColumn(name = "id", referencedColumnName = "id"))
	private Set<T_Truck> truS = new HashSet<>();
	
	@OneToMany(targetEntity = T_Special.class)
	@JoinTable(name = "qy_spe", joinColumns = @JoinColumn(name = "id", referencedColumnName = "id"), inverseJoinColumns = @JoinColumn(name = "id", referencedColumnName = "id"))
	private Set<T_Truck> speS = new HashSet<>();
	
	@OneToMany(targetEntity = T_Job.class)
	@JoinTable(name = "qy_job", joinColumns = @JoinColumn(name = "id", referencedColumnName = "id"), inverseJoinColumns = @JoinColumn(name = "id", referencedColumnName = "id"))
	private Set<T_Truck> jobS = new HashSet<>();
	
	public T_QyUser(){}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPass() {
		return userPass;
	}
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}
	public String getPassQuestion() {
		return passQuestion;
	}
	public void setPassQuestion(String passQuestion) {
		this.passQuestion = passQuestion;
	}
	public String getPassSolution() {
		return passSolution;
	}
	public void setPassSolution(String passSolution) {
		this.passSolution = passSolution;
	}
	public String getLinkman() {
		return linkman;
	}
	public void setLinkman(String linkman) {
		this.linkman = linkman;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public String getCalling() {
		return calling;
	}
	public void setCalling(String calling) {
		this.calling = calling;
	}
	public String getLicenceNumber() {
		return licenceNumber;
	}
	public void setLicenceNumber(String licenceNumber) {
		this.licenceNumber = licenceNumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getFax() {
		return fax;
	}
	public void setFax(String fax) {
		this.fax = fax;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNetworkIP() {
		return networkIP;
	}
	public void setNetworkIP(String networkIP) {
		this.networkIP = networkIP;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getLock() {
		return locks;
	}
	public void setLock(String lock) {
		this.locks = lock;
	}
	public String getLockCause() {
		return lockCause;
	}
	public void setLockCause(String lockCause) {
		this.lockCause = lockCause;
	}
	public Set<T_Freight> getFreS() {
		return freS;
	}
	public void setFreS(Set<T_Freight> freS) {
		this.freS = freS;
	}
	public Set<T_Deopt> getDepS() {
		return depS;
	}
	public void setDepS(Set<T_Deopt> depS) {
		this.depS = depS;
	}
	public Set<T_Truck> getTruS() {
		return truS;
	}
	public void setTruS(Set<T_Truck> truS) {
		this.truS = truS;
	}
	public Set<T_Truck> getSpeS() {
		return speS;
	}
	public void setSpeS(Set<T_Truck> speS) {
		this.speS = speS;
	}
	public Set<T_Truck> getJobS() {
		return jobS;
	}
	public void setJobS(Set<T_Truck> jobS) {
		this.jobS = jobS;
	}
	
	
}
