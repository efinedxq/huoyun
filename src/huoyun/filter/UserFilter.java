package huoyun.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebFilter({"*.jsp"})
public class UserFilter  implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;
		
		String userType = request.getParameter("userType");
		
		String  uri  = req.getRequestURI() ;
		
		System.out.println("Log Filter已经截获到用户的请求的地址1:"+req.getServletPath());
		System.out.println("Log Filter已经截获到用户的请求的地址2:"+uri);
		System.out.println("Log Filter已经截获到用户的请求的地址3:"+req.getContextPath());
		System.out.println("userType:"+userType);
		//发布信息需要用户登录
		if(uri.contains("/users/issuInfo.jsp")){
			if(userType==null||userType.equals("3")){
            //	req.setAttribute("msg", "请先登录！");
				res.sendRedirect(req.getContextPath());
       		    return ;
			}
			else{
				chain.doFilter(req, res);
				return ;
			}
		}
		
		chain.doFilter(req, res);
		return ;
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
