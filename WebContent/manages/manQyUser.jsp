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

<link href="../css/css.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<!-- 一次显示20条  -->
	<table align="center" cellspacing="1" width="720px">
		<tr>
			<td colspan="6" style="font-size: 14pt; color: #b11a55"><b>企业用户信息管理</b></td>
		</tr>
		<tr>
			<td colspan="6"><input type="radio" name="" value=""
				checked="checked" />所有信息 <input type="radio" name="" value="" />已锁定
				<input type="radio" name="" value="" />未锁定</td>
		</tr>
	</table>
	<table border="1px" align="center" cellspacing="0" width="720px">
		<tr>
			<th>编号</th>
			<th>用户名</th>
			<th>企业名称</th>
			<th>状态</th>
			<th>操作</th>
			<th>删除</th>
		</tr>
		<s:iterator value="#request.qyUserList" var="dep" status="st">
			<tr>
				<td><a target="_blank"
					href="<%=path %>/qyUserInfo.action?id=${id}"><s:property
							value="#st.index+1" /></a></td>
				<td><s:property value="name" /></td>
				<td><s:property value="companyName" /></td>
				<td><s:property value="auditing" /></td>
				<td><a href="<%=path %>/man/qyUserLock?id=${id}&lock=1">锁定</a>/<a
					href="<%=path %>/man/qyUserLock?id=${id}&lock=0">解锁</a></td>
				<td><a href="<%=path %>/man/qyUserDel?id=${id}">删除</a></td>
			</tr>
		</s:iterator>

		<tr>
			<td colspan="6">第${pageNo}页&nbsp&nbsp&nbsp&nbsp 共 ${pageCount}页
				&nbsp&nbsp&nbsp&nbsp <c:if test="${pageNo!=1}">
					<a href="<%=path %>/man/qyUserList?pageNo=${pageNo-1}"> 上一页 </a>
				</c:if>&nbsp&nbsp&nbsp&nbsp <c:if test="${pageNo!=pageCount}">
					<a href="<%=path %>/man/qyUserList?pageNo=${pageNo+1}" />">下一页 
					</a>
				</c:if>
			</td>
		</tr>
	</table>

</body>