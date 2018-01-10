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
<link href="<%=path%>/css/css1.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="speInfo">
		<div class="speInfo1"></div>
		<table class="speInfo2" align="center" cellspacing="0">
			<tr>
				<th width="50px">编号</th>
				<th width="180px">出发地</th>
				<th width="180px">到达地</th>
				<th width="80px">车型</th>
				<th width="60px">专线报价</th>
				<th width="80px">发布日期</th>
				<th width="45">删除</th>
				<th width="45">修改</th>
			</tr>
			<s:iterator value="#request.speList" var="spe" status="st">
				<tr>
					<td><a target="_blank"
						href="<%=path %>/speInfo.action?id=${id}"><s:property
								value="#st.index+1" /></a></td>
					<td><s:property value="start" /></td>
					<td><s:property value="terminal" /></td>
					<td><s:property value="truckType" /></td>
					<td><s:property value="specialPrice" /></td>
					<td><s:property value="fBDate" /></td>
					<td><a href="<%=path %>/speDel?id=${id}" />">删除</a></td>
					<td><a href="<%=path %>/user/speModify?id=${id}">修改</a></td>
			</s:iterator>
			<tr>
				<td colspan="8">第${pageNo}页&nbsp&nbsp&nbsp&nbsp 共 ${pageCount}页
					&nbsp&nbsp&nbsp&nbsp <c:if test="${pageNo!=1}">
						<a href="<%=path %>/user/freUserList?pageNo=${pageNo-1}&userId=${user.id}"> 上一页 </a>
					</c:if>&nbsp&nbsp&nbsp&nbsp <c:if test="${pageNo<pageCount}">
						<a href="<%=path %>/user/freUserList?pageNo=${pageNo+1}&userId=${user.id}">下一页 </a>
					</c:if>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>