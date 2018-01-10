package huoyun.action;

import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import huoyun.domain.T_News;
import huoyun.service.T_NewsService;
@Controller
@Scope("prototype")
@Namespace("/")
public class NewsAction extends ActionSupport implements ModelDriven<T_News> {

	protected Integer pageNo = 1;   // 当前页码
	protected Integer total;   // 向页面传，共多少条
	protected Integer pageSize = 20;// 从页面传，每页条数
    protected Integer pageCount = 0;
    
	protected List<T_News> newsList;
	protected T_News news = new T_News();
	
	/**
	 * 设置过滤器，根据url设置，如果url中包含man、user，则检查userType是否存在。若存在则连接过去，否则就转到masterPage.jsp
	 */
	
	@Resource(name="newsService")
	T_NewsService newsService;
	
	
	/**
	 * newsFive大众获取5条最新数据
	 */
	@Action(value = "newsFive", results = @Result(name = "success", type = "chain", location = "qyUserFive"))
	public String newsFive() {
		
		System.out.println("访问位置：newsManList");
		
		String hql = "from T_News news order by news.id desc";
		newsList = newsService.findHqlByPage(hql, 1, 5);
		
		ActionContext.getContext().getSession().put("newsList",newsList);
		
		return SUCCESS;
	}

	/**
	 * newsList 大众获取20 条数据
	 */
	@Action(value = "newsList", results = @Result(name = "success", location = "/users/newsList.jsp"))
	public String newsList() {
		String hql = "from T_News news order by news.id desc";
		newsList = newsService.findHqlByPage(hql, pageNo, pageSize);
		total = (int) newsService.findCount();
		if (total != null) {
			if (total % pageSize == 0) {
				pageCount = total / pageSize;
			} else {
				pageCount = total / pageSize + 1;
			}
		} else {
			total = 0;
			pageCount = 1;
		}
		return SUCCESS;
	}

	/**
	 * newsManList 管理员获取20 条数据
	 */
	@Action(value = "/man/newsManList", results = @Result(name = "success", location = "/manages/manNews.jsp"))
	public String newsManList() {
		
		String hql = "from T_News news order by news.id desc";
		newsList = newsService.findHqlByPage(hql, pageNo, pageSize);
		total = (int) newsService.findCount();
		if (total != null) {
			if (total % pageSize == 0) {
				pageCount = total / pageSize;
			} else {
				pageCount = total / pageSize + 1;
			}
		} else {
			total = 0;
			pageCount = 1;
		}
		return SUCCESS;
	}

	/**
	 * newsInfo 获取一条数据
	 */
	@Action(value = "newsInfo", results = @Result(name = "success", location = "/users/newsInfo.jsp"))
	public String newsInfo() {
	    news = newsService.getById(news.getId());
		return SUCCESS;
	}

	/**
	 * newsDel 管理员删除一条数据 可以利用 chain 连接到newsList
	 */
	@Action(value = "/man/newsDel", results = @Result(name = "success", location = "/manages/manNews.jsp"))
	public String newsDel() {
		newsService.deleteById(news.getId());
		return SUCCESS;
	}

	/**
	 * newsAdd 管理员添加一条数据 可以利用 chain 连接到newsList
	 */
	@Action(value = "/man/newsAdd", results = @Result(name = "success", location = "/manages/manNews.jsp"))
	public String newsAdd() {
		newsService.save(news);
		return SUCCESS;
	}

	@Override
	public T_News getModel() {
		// TODO Auto-generated method stub
		return news;
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

	public List<T_News> getNewsList() {
		return newsList;
	}

	public void setNewsList(List<T_News> newsList) {
		this.newsList = newsList;
	}

	public T_News getNews() {
		return news;
	}

	public void setNews(T_News news) {
		this.news = news;
	}

	public Integer getPageCount() {
		return pageCount;
	}

	public void setPageCount(Integer pageCount) {
		this.pageCount = pageCount;
	}

    
}
