<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>货运管理信息系统-首页</title>
<style type="text/css">
</style>
<link href="<%=path%>/css/css1.css" rel="stylesheet" type="text/css" />
 
</head>
<body bgcolor="#cce0eb">
	<div class="header">
		<div class="header1"></div>
		<div class="nav">
			<ul>
				<li><a href="<%=path%>/">首页</a></li>
				<li><a href="<%=path%>/freList" target="main">货源信息</a></li>
				<li><a href="<%=path%>/truList" target="main">车源信息</a></li>
				<li><a href="<%=path%>/speList" target="main">专线信息</a></li>
				<li><a href="<%=path%>/depList" target="main">仓储信息</a></li>
				<li><a href="<%=path%>/jobList" target="main">招聘信息</a></li>
				<li><a href="<%=path%>/comList" target="main">企业信息</a></li>
				<li><a href="<%=path%>/user/issuInfo">发布信息</a></li>
			</ul>
		</div>
		<div class="header2">
			<div class="search">
				<form name="search" method="post" target="main" action="<%=path%>/search">
				     <table>
					    <tr>
						    <td>类型:</td>
						    <td>
							    <select id="search1" name="type" onchange="change()">  
                                   <option value ="1" selected>货源信息</option>  
                                   <option value ="2">车源信息</option>  
                                   <option value="3">仓储信息</option>  
                                   <option value="4">专线信息</option>  
								   <option value="5">招聘信息</option>  
                                   <option value="6">企业信息</option>  
                                </select>
							</td>
							<td>关键字:</td>
							<td>
							    <select id="search2" name="keyword">  
                                    <option value="1" selected>出发地点</option>
								    <option value="2">到达地点</option>
									<option value="3">货物类别</option>
									<option value="4">有效日期</option>
                                </select>
							</td>
							<td><input type="text" name="keys" required="required"/></td>
							<td><button type="submit">搜索</button></td>
						</tr>
					 </table>
					 </form>
			</div>
		</div>

	</div>
	<div class="mainbox">
		<table>
			<tr>
				<td valign="top" style="background-color: #d3cec2;">
					<div class="left">
						<div class="login">
							<div class="login1"></div>
							<div class="login2">
							    <c:if test="${user==null}">
							       <form method="post" name="user" action="<%=path %>/user/userIn">
									<table>
										<tr>
											<td>登录:</td>
											<td><input type="text" name="name" style="width: 120px;" required="required"/></td>
											<td><input type="radio" name="userType" value="1"
												checked /> 个人</td>
										</tr>
										<tr>
											<td>密码:</td>
											<td><input type="password" name="pass"
												style="width: 120px;" required="required"/></td>
											<td><input type="radio" name="userType" value="2" /> 企业</td>
										</tr>
										<tr>
											<td colspan="3" align="center"><a href="<%=path %>/users/regist.jsp"
												target="main">［新会员注册］</a></td>
										</tr>
										<tr>
											<td colspan="3" align="center">
											<button type="submit">登录</button>
											<button type="reset">重置</button>
											</td>
										</tr>
										<tr>
										   <td colspan="3" align="center">
										     <font color="red">
										         ${msg}
										     </font>
										   </td>
										</tr>
									</table>
								</form>
							    </c:if>
							     <c:if test="${user!=null}">
							         <table style="width:250px">
										<tr>
										   <td align="center">
										       ${user.name} 欢迎您登录！
										   </td>
										</tr>
										<tr>
										   <td align="center">
										       <a href="<%=path%>/user/userOut">退出登录</a>
										   </td>
										</tr>
							        </table>
							     </c:if>
							</div>
						</div>
						<div class="news">
							<div class="news1">
								<a href="<%=path%>/newsList" target="main">更多&gt&gt</a>
							</div>

							<table class="news2" align="center" cellspacing="0px">
								<tr>
									<th>新闻标题</th>
									<th>发布时间</th>
								</tr>
								<s:iterator value="#session.newsList" var="news">
									<tr>
										<td><a target="_blank"
											href="<s:url value="newsInfo?id=%{id}"/>"><s:property
													value="newsTitle" /></a></td>
										<td><s:property value="fBDate" /></td>
									</tr>
								</s:iterator>
							</table>

						</div>
						<div class="company">
							<div class="company1">
								<a href="<%=path%>/comList" target="main">更多&gt&gt</a>
							</div>

							<table class="company2" align="center" cellspacing="0px">
								<tr>
									<th>企业名称</th>
									<th>企业性质</th>
									<th>联系方式</th>
								</tr>
								<s:iterator value="#session.qyUserList" var="qyUser">
									<tr>
										<td><a target="_blank"
											href="<s:url value="qyUserInfo?id=%{id}"/>"><s:property
													value="companyName" /></a></td>
										<td><s:property value="kind" /></td>
										<td><s:property value="phone" /></td>
									</tr>
								</s:iterator>

							</table>
						</div>
					</div>
				</td>
				<td valign="top" style="background-color: #d4cca3">
					<div class="right">
						<iframe width="730px" height="650px" src="<%=path %>/freFive" name="main"></iframe>
					</div>
				</td>
			</tr>
		</table>
	</div>
	<div class="footer">
		<div class="footer1">
			<ul>
				<li><a href="<%=path%>/freList" target="main">货源信息</a></li>
				<li><a href="<%=path%>/truList" target="main">车源信息</a></li>
				<li><a href="<%=path%>/speList" target="main">专线信息</a></li>
				<li><a href="<%=path%>/depList" target="main">仓储信息</a></li>
				<li><a href="<%=path%>/jobList" target="main">招聘信息</a></li>
				<li><a href="<%=path%>/comList" target="main">企业信息</a></li>
				<li><a href="<%=path%>/users/manageEntry.jsp">后台登录</a></li>
			</ul>
		</div>
		<div class="footer2">
			<table align="center">
				<tr>
					<td align="center">山东青岛XXX科技有限公司 版权所有</td>
				</tr>
				<tr>
					<td>联系电话：0317-41213157 公司地址：山东青岛经济技术开发区
						E-mail：1234567890@qq.com</td>
				</tr>
			</table>
		</div>
	</div>
	 <script type="text/javascript" src="<%=path %>/javascript/search.js">
	</script>
</body>
</html>