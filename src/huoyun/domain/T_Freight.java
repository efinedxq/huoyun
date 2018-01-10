package huoyun.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Generated;
import org.hibernate.annotations.GenerationTime;
@Entity
@Table(name="T_Freight")
public class T_Freight {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;	//货运货物编号
	private String start;	//出发地点
	private String terminal;	//达到地点
	private String freightType;	//货运货物类别
	private String freightWeight;	//货运货物重量
	private String weightUnit;	//重量单位
	private String linkman;	//联系人
	private String phone;	//联系电话
	private String term;	//有效日期
	private String content;	//备注
	@Generated(GenerationTime.ALWAYS)  //设置默认值
	private String fBDate;	//发布日期
	@Generated(GenerationTime.ALWAYS)  //设置默认值
	private String auditing;	//审核状态
	
	public T_Freight(){}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getStart() {
		return start;
	}
	public void setStart(String start) {
		this.start = start;
	}
	public String getTerminal() {
		return terminal;
	}
	public void setTerminal(String terminal) {
		this.terminal = terminal;
	}
	public String getFreightType() {
		return freightType;
	}
	public void setFreightType(String freightType) {
		this.freightType = freightType;
	}
	public String getFreightWeight() {
		return freightWeight;
	}
	public void setFreightWeight(String freightWeight) {
		this.freightWeight = freightWeight;
	}
	public String getWeightUnit() {
		return weightUnit;
	}
	public void setWeightUnit(String weightUnit) {
		this.weightUnit = weightUnit;
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
