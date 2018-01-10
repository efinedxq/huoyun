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
<style type="text/css">
.speInfo1 {
	width: 300px;
	height: 35px;
	background: url(<%=path%>/images/zhuanxianxinxi.gif) no-repeat;
	text-align: right;
}

.speInfo2 th, .speInfo2 td {
	height: 27px;
}
</style>
</head>
<body>
	<!-- 一次显示20条  -->
	<div class="speInfo">
		<div class="speInfo1"></div>
		<table class="speInfo2" align="center" cellspacing="0">
			<tr>
				<th width="50px">编号</th>
				<th width="200px">出发地</th>
				<th width="200px">到达地</th>
				<th width="80px">车型</th>
				<th width="110px">专线报价</th>
				<th width="110px">发布日期</th>
			</tr>
			<s:iterator value="#request.speList" var="spe" status="st">
				<tr>
					<td><a target="_blank"
						href="<s:url value="speInfo.action?id=%{id}"/>"><s:property
								value="#st.index+1" /></a></td>
					<td><s:property value="start" /></td>
					<td><s:property value="terminal" /></td>
					<td><s:property value="truckType" /></td>
					<td><s:property value="specialPrice" /></td>

					<td><s:property value="fBDate" /></td>
				</tr>
			</s:iterator>
			<tr>
				<td colspan="6">第${pageNo}页&nbsp&nbsp&nbsp&nbsp 共 ${pageCount}页
					&nbsp&nbsp&nbsp&nbsp <c:if test="${pageNo!=1}">
						<a href="<%=path %>/freList?pageNo=${pageNo-1}"> 上一页 </a>
					</c:if>&nbsp&nbsp&nbsp&nbsp <c:if test="${pageNo<pageCount}">
						<a href="<%=path %>/freList?pageNo=${pageNo+1}">下一页 </a>
					</c:if>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>