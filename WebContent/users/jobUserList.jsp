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
<link href="<%=path %>/css/css1.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="jobInfo">
		<div class="jobInfo1"></div>
		<table class="jobInfo2" align="center" cellspacing="0">
			<tr>
				<th width="50px">编号</th>
				<th width="180px">招聘职位</th>
				<th width="100px">招聘人数</th>
				<th width="100px">要求性别</th>
				<th width="100px">要求年龄</th>
				<th width="100px">要求学历</th>
				<th width="45">删除</th>
				<th width="45">修改</th>
			</tr>
			<s:iterator value="#request.jobList" var="job" status="st">
				<tr>
					<td><a target="_blank"
						href="<%=path %>/jobInfo.action?id=${id}"><s:property
								value="#st.index+1" /></a></td>
					<td><s:property value="job" /></td>
					<td><s:property value="number" /></td>
					<td><s:property value="sex" /></td>
					<td><s:property value="age" /></td>
					<td><s:property value="knowledge" /></td>
					<td><a href="<%=path %>/jobDel?id=${id}">删除</a></td>
					<td><a href="<%=path %>/user/jobModify?id=${id}">修改</a></td>
				</tr>
			</s:iterator>
			<tr>
				<td colspan="8">第${pageNo}页&nbsp&nbsp&nbsp&nbsp 共 ${pageCount}页
					&nbsp&nbsp&nbsp&nbsp <s:if test="#request.pageNo!=1">
						<a href="<%=path %>/user/jobUserList?pageNo=${pageNo-1}&userId=${user.id}">
							上一页 </a>
					</s:if>&nbsp&nbsp&nbsp&nbsp <c:if test="${pageNo<pageCount}">
						<a href="<%=path %>/user/jobUserList?pageNo=${pageNo+1}&userId=${user.id}">
							下一页 </a>
					</c:if>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>