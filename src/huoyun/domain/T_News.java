package huoyun.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Formula;
import org.hibernate.annotations.Generated;
import org.hibernate.annotations.GenerationTime;

@Entity
@Table(name = "T_News")
public class T_News {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id; // 新闻编号
	private String newsTitle; // 新闻标题
	private String newsContent; // 新闻内容

	@Generated(GenerationTime.INSERT) // 设置默认值
	private String fBDate; // 发布日期

	public T_News(){}
	 
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNewsTitle() {
		return newsTitle;
	}

	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}

	public String getNewsContent() {
		return newsContent;
	}

	public void setNewsContent(String newsContent) {
		this.newsContent = newsContent;
	}

	public String getfBDate() {
		return fBDate;
	}

	public void setfBDate(String fBDate) {
		this.fBDate = fBDate;
	}
}
