package huoyun.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Generated;
import org.hibernate.annotations.GenerationTime;

@Entity
@Table(name="T_Truck")
public class T_Truck {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;	//货运车辆编号
	private String start;	//出发地点
	private String terminal;	//到达地点
	private String truckType;	//货运车辆类型
	private String truckLong;	//车长
	private String truckLoad;	//载重
	private String linkman;	//联系人
	private String phone;	//联系电话
	private String term;	//有效日期
	private String content;	//备注
	@Generated(GenerationTime.ALWAYS)  //设置默认值
	private String fBDate;	//发布日期
	@Generated(GenerationTime.ALWAYS)  //设置默认值
	private Integer auditing ;	//审核状态
	
	public T_Truck(){}
	
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
	public String getTruckType() {
		return truckType;
	}
	public void setTruckType(String truckType) {
		this.truckType = truckType;
	}
	public String getTruckLong() {
		return truckLong;
	}
	public void setTruckLong(String truckLong) {
		this.truckLong = truckLong;
	}
	public String getTruckLoad() {
		return truckLoad;
	}
	public void setTruckLoad(String truckLoad) {
		this.truckLoad = truckLoad;
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

	public Integer getAuditing() {
		return auditing;
	}

	public void setAuditing(Integer auditing) {
		this.auditing = auditing;
	}
}
