package huoyun.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Generated;
import org.hibernate.annotations.GenerationTime;

@Entity
@Table(name="T_Job")
public class T_Job {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;	//招聘编号
	private String job;	//招聘职位
	private String number;	//招聘人数
	private String sex;	//性别要求
	private String age;	//年龄要求
	private String knowledge;	//学历要求
	private String specialty;	//专业要求
	private String experience;	//工作经验
	private String city;	//工作地点
	private String pay;	//月薪
	private String particularInfo;	//详细信息
	@Generated(GenerationTime.INSERT)  //设置默认值
	private String fBDate;	//发布日期
	private String userName;	//发布者
	@Generated(GenerationTime.INSERT)  //设置默认值
	private String auditing ;	//审核状态
	
	
	public T_Job(){}
	
	public Integer getID() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getKnowledge() {
		return knowledge;
	}
	public void setKnowledge(String knowledge) {
		this.knowledge = knowledge;
	}
	public String getSpecialty() {
		return specialty;
	}
	public void setSpecialty(String specialty) {
		this.specialty = specialty;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getPay() {
		return pay;
	}
	public void setPay(String pay) {
		this.pay = pay;
	}
	public String getParticularInfo() {
		return particularInfo;
	}
	public void setParticularInfo(String particularInfo) {
		this.particularInfo = particularInfo;
	}
	public String getfBDate() {
		return fBDate;
	}
	public void setfBDate(String fBDate) {
		this.fBDate = fBDate;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getAuditing() {
		return auditing;
	}
	public void setAuditing(String auditing) {
		this.auditing = auditing;
	}
}
