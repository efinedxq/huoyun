package huoyun.domain;

import java.util.HashSet;
import java.util.Set;

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
import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

@Entity
@Table(name = "T_GrUser")
public class T_GrUser {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id; // 会员编号
	private String name; // 登陆名
	private String pass; // 密码
	private String passQuestion; // 密码提示问题
	private String passSolution; // 密码提示答案
	private String linkman; // 联系人
	private String phone; // 联系方式
	private String address; // 地址
	@Generated(GenerationTime.ALWAYS) // 设置默认值
	private String locks; // 锁定状态
	@Generated(GenerationTime.ALWAYS) // 设置默认值
	private String lockCause; // 锁定原因

	@OneToMany(targetEntity = T_Freight.class)
	@LazyCollection(LazyCollectionOption.FALSE)
	@JoinTable(name = "gr_fre", joinColumns = @JoinColumn(name = "grid", referencedColumnName = "id"), inverseJoinColumns = @JoinColumn(name = "freid", referencedColumnName = "id",unique=true))
	private Set<T_Freight> freS = new HashSet<>();

	@OneToMany(targetEntity = T_Deopt.class)
	@LazyCollection(LazyCollectionOption.FALSE)
	@JoinTable(name = "gr_dep", joinColumns = @JoinColumn(name = "grid", referencedColumnName = "id"), inverseJoinColumns = @JoinColumn(name = "depid", referencedColumnName = "id",unique=true))
	private Set<T_Deopt> depS = new HashSet<>();
	
	@OneToMany(targetEntity = T_Truck.class)
	@LazyCollection(LazyCollectionOption.FALSE)
	@JoinTable(name = "gr_tru", joinColumns = @JoinColumn(name = "grid", referencedColumnName = "id"), inverseJoinColumns = @JoinColumn(name = "truid", referencedColumnName = "id",unique=true))
	private Set<T_Truck> truS = new HashSet<>();
	
	
	public T_GrUser() {}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getLocks() {
		return locks;
	}

	public void setLocks(String locks) {
		this.locks = locks;
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

}
