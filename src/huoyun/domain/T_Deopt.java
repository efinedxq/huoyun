package huoyun.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Generated;
import org.hibernate.annotations.GenerationTime;

@Entity
@Table(name="T_Deopt")
public class T_Deopt {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;	//货运仓库编号
	private String deoptType;	//货运仓库类型
	private String depotCity;	//货运仓库所在城市
	private String depotSite;	//货运仓库所在地点
	private String depotAcreage;	//货运仓库面积
	private String depotSum;	//货运仓库间数
	private String depotPrice;	//货运仓库价格
	private String loading;	//装载服务
	private String packing;	//包装服务
	private String send;	//配送服务
	private String linkman;	//联系人
	private String phone;	//联系方式
	private String term;	//有效日期
	private String content;	//详细信息
	@Generated(GenerationTime.ALWAYS)  //设置默认值
	private String fBDate;	//发布日期
	@Generated(GenerationTime.ALWAYS)  //设置默认值
	private String auditing;	//审核状态
	
	
	public T_Deopt(){}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getDeoptType() {
		return deoptType;
	}
	public void setDeoptType(String deoptType) {
		this.deoptType = deoptType;
	}
	public String getDepotCity() {
		return depotCity;
	}
	public void setDepotCity(String depotCity) {
		this.depotCity = depotCity;
	}
	public String getDepotSite() {
		return depotSite;
	}
	public void setDepotSite(String depotSite) {
		this.depotSite = depotSite;
	}
	public String getDepotAcreage() {
		return depotAcreage;
	}
	public void setDepotAcreage(String depotAcreage) {
		this.depotAcreage = depotAcreage;
	}
	public String getDepotSum() {
		return depotSum;
	}
	public void setDepotSum(String depotSum) {
		this.depotSum = depotSum;
	}
	public String getDepotPrice() {
		return depotPrice;
	}
	public void setDepotPrice(String depotPrice) {
		this.depotPrice = depotPrice;
	}
	public String getLoading() {
		return loading;
	}
	public void setLoading(String loading) {
		this.loading = loading;
	}
	public String getPacking() {
		return packing;
	}
	public void setPacking(String packing) {
		this.packing = packing;
	}
	public String getSend() {
		return send;
	}
	public void setSend(String send) {
		this.send = send;
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
	public String getTerm() {
		return term;
	}
	public void setTerm(String term) {
		this.term = term;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getfBDate() {
		return fBDate;
	}
	public void setfBDate(String fBDate) {
		this.fBDate = fBDate;
	}
	public String getAuditing() {
		return auditing;
	}
	public void setAuditing(String auditing) {
		this.auditing = auditing;
	}
	
}
