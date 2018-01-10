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
	<div class="depInfo">
		<div class="depInfo1"></div>
		<table class="depInfo2" align="center" cellspacing="0">
			<tr>
				<th width="50px">编号</th>
				<th width="160px">仓库类型</th>
				<th width="180px">所在城市</th>
				<th width="80px">仓库面积</th>
				<th width="80px">每间价格</th>
				<th width="80px">发布日期</th>
				<th width="45">删除</th>
				<th width="45">修改</th>
			</tr>
			<s:iterator value="#request.depList" var="dep" status="st">
				<tr>
					<td><a target="_blank" href="<%=path %>/depInfo?id=${id}"><s:property
								value="#st.index+1" /></a></td>
					<td><s:property value="deoptType" /></td>
					<td><s:property value="depotCity" /></td>
					<td><s:property value="depotAcreage" /></td>
					<td><s:property value="depotPrice" /></td>
					<td><s:property value="fBDate" /></td>
					<td><a href="<%=path %>/depDel?id=${id}">删除</a></td>
					<td><a href="<%=path %>/user/depModify?id=${id}">修改</a></td>
				</tr>
			</s:iterator>

			<tr>
				<td colspan="8">第${pageNo}页&nbsp&nbsp&nbsp&nbsp 共 ${pageCount}页
					&nbsp&nbsp&nbsp&nbsp <c:if test="${pageNo!=1}">
						<a href="<%=path %>/user/depUserList?pageNo=${pageNo-1}&userId=${user.id}"> 上一页
						</a>
					</c:if>&nbsp&nbsp&nbsp&nbsp <c:if test="${pageNo<pageCount}">
						<a href="<%=path %>/user/depUserList?pageNo=${pageNo+1}&userId=${user.id}"> 下一页
						</a>
					</c:if>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>