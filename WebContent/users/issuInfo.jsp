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
<title>货运管理信息系统-发布信息管理</title>
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
				<form name="search" method="post" action="<%=path%>/search">
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
						<div class="fbLeft"></div>
						<table class="fbtable"
							style="width: 250px; background-color: #d3cec2;">
							<c:if test="${userType==2}">
								<tr>
									<td>车源信息：<a href="<%=path %>/users/issuTru.jsp" target="main">发布</a>&nbsp|&nbsp
										<a href="<%=path %>/user/truUserList?userId=${user.id}"
										target="main">管理</a></td>
								</tr>
								<tr>
									<td>货源信息：<a href="<%=path %>/users/issuFre.jsp" target="main">发布</a>&nbsp|&nbsp
										<a href="<%=path %>/user/freUserList?userId=${user.id}"
										target="main">管理</a></td>
								</tr>
								<tr>
									<td>仓储信息：<a href="<%=path %>/users/issuDep.jsp" target="main">发布</a>&nbsp|&nbsp
										<a href="<%=path %>/user/depUserList?userId=${user.id}"
										target="main">管理</a></td>
								</tr>
								<tr>
									<td>专线信息：<a href="<%=path %>/users/issuSpe.jsp" target="main">发布</a>&nbsp|&nbsp
										<a href="<%=path %>/user/speUserList?userId=${user.id}"
										target="main">管理</a></td>
								</tr>
								<tr>
									<td>招聘信息：<a href="<%=path %>/users/issuJob.jsp" target="main">发布</a>&nbsp|&nbsp
										<a href="<%=path %>/user/jobUserList?userId=${user.id}"
										target="main">管理</a></td>
								</tr>
								<tr>
									<td>用户密码：<a href="<%=path %>/users/newPass.jsp" target="main">修改</a></td>
								</tr>
								<tr>
									<td><a href="<%=path %>/users/masterPage.jsp">返回首页</a></td>
								</tr>
							</c:if>
							<c:if test="${userType==1}">
								<tr>
									<td>车源信息：<a href="<%=path %>/users/issuTru.jsp" target="main">发布</a>&nbsp|&nbsp
										<a href="<%=path %>/user/truUserList?userId=${user.id}"
										target="main">管理</a></td>
								</tr>
								<tr>
									<td>货源信息：<a href="<%=path %>/users/issuFre.jsp" target="main">发布</a>&nbsp|&nbsp
										<a href="<%=path %>/user/freUserList?userId=${user.id}"
										target="main">管理</a></td>
								</tr>
								<tr>
									<td>仓储信息：<a href="<%=path %>/users/issuDep.jsp" target="main">发布</a>&nbsp|&nbsp
										<a href="<%=path %>/user/depUserList?userId=${user.id}"
										target="main">管理</a></td>
								</tr>
								<tr>
									<td>用户密码：<a href="<%=path %>/users/newPass.jsp" target="main">修改</a></td>
								</tr>
								<tr>
									<td><a href="<%=path%>/users/masterPage.jsp">返回首页</a></td>
								</tr>
							</c:if>
						</table>
					</div>
				</td>
				<td valign="top" style="background-color: #d4cca3">
					<div class="right">
						<c:if test="${userType==2}">
							<iframe width="730px" height="650px"
								src="<%=path %>/user/truUserList?userId=${user.id}"
								name="main"></iframe>
						</c:if>
						<c:if test="${userType==1}">
							<iframe width="730px" height="650px"
								src="<%=path %>/user/truUserList?userId=${user.id}"
								name="main"></iframe>
						</c:if>
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