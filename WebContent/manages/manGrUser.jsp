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
			<td colspan="7" style="font-size: 14pt; color: #b11a55"><b>普通用户信息管理</b></td>
		</tr>
		<tr>
			<td colspan="7"><input type="radio" name="grInfoType" value="0"
				checked="checked" />所有信息 <input type="radio" name="grInfoType"
				value="1" />已锁定 <input type="radio" name="grInfoType" value="2" />未锁定
			</td>
		</tr>
	</table>

	<table border="1px" align="center" cellspacing="0" width="720px">
		<tr>
			<th>编号</th>
			<th>用户名</th>

			<th>联系电话</th>
			<th>所在地址</th>
			<th>状态</th>
			<th>操作</th>
			<th>删除</th>
		</tr>
		<s:iterator value="#request.grUserList" var="grUser" status="st">
			<tr>
				<td><a target="_blank"
					href="<%=path %>/grUserInfo.action?id=${id}"><s:property
							value="#st.index+1" /></a></td>
				<td><s:property value="name" /></td>
				<td><s:property value="phone" /></td>
				<td><s:property value="address" /></td>
				<td><s:property value="locks" /></td>
				<td><a href="<%=path %>/man/grUserLock?id=${id}&lock=1">锁定</a>/<a
					href="<%=path %>/man/grUserLock?id=${id}&lock=0/>">解锁</a></td>
				<td><a href="<%=path %>/man/grUserDel?id=${id}">删除</a></td>
			</tr>
		</s:iterator>
		<tr>
			<td colspan="7">第${pageNo}页&nbsp&nbsp&nbsp&nbsp 共 ${pageCount}页
				&nbsp&nbsp&nbsp&nbsp <c:if test="${pageNo!=1}">
					<a href="<%=path %>/man/grUserList?pageNo=${pageNo-1}"> 上一页 </a>
				</c:if>&nbsp&nbsp&nbsp&nbsp <c:if test="${pageNo!=pageCount}">
					<a href="<%=path %>/man/grUserList?pageNo=${pageNo+1}" />">下一页 
					</a>
				</c:if>
			</td>
		</tr>
	</table>

</body>