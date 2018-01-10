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
	<div class="freInfo">
		<div class="freInfo1">
		</div>
		<table class="freInfo2" align="center" cellspacing="0">
			<tr>
				<th width="50px">编号</th>
				<th width="200px">出发地</th>
				<th width="200px">到达地</th>
				<th width="110px">货物种类</th>
				<th width="70px">重量</th>
				<th width="100px">发布日期</th>
			</tr>
			<s:iterator value="#request.freList" var="fre">
				<tr>
					<td><a target="_blank"
						href="<s:url value="freInfo.action?id=%{id}"/>"><s:property
								value="id" /></a></td>
					<td><s:property value="start"/></td>
					<td><s:property value="terminal" /></td>
					<td><s:property value="freightType" /></td>
					<td><s:property value="freightWeight" /></td>

					<td><s:property value="fBDate" /></td>
				</tr>
			</s:iterator>
		</table>
	</div>
	<div class="truInfo">
		<div class="truInfo1">
		</div>
		<table class="truInfo2" align="center" cellspacing="0">
			<tr>
				<th width="50px">编号</th>
				<th width="200px">出发地</th>
				<th width="200px">到达地</th>
				<th width="110px">车型</th>
				<th width="80px">载重</th>
				<th width="110px">发布日期</th>
			</tr>
			<s:iterator value="#request.truList" var="tru">
				<tr>
					<td><a target="_blank"
						href="<s:url value="truInfo.action?id=%{id}"/>"><s:property
								value="id" /></a></td>
					<td><s:property value="start" /></td>
					<td><s:property value="terminal" /></td>
					<td><s:property value="truckType" /></td>
					<td><s:property value="truckLoad" /></td>
					<td><s:property value="fBDate" /></td>
				</tr>
			</s:iterator>
		</table>
	</div>
	<div class="speInfo">
		<div class="speInfo1">
		</div>
		<table class="speInfo2" align="center" cellspacing="0">
			<tr>
				<th width="50px">编号</th>
				<th width="200px">出发地</th>
				<th width="200px">到达地</th>
				<th width="80px">车型</th>
				<th width="110px">专线报价</th>
				<th width="110px">发布日期</th>
			</tr>
			<s:iterator value="#request.speList" var="spe">
				<tr>
					<td><a target="_blank"
						href="<s:url value="speInfo.action?id=%{id}"/>"><s:property
								value="id" /></a></td>
					<td><s:property value="start" /></td>
					<td><s:property value="terminal" /></td>
					<td><s:property value="truckType" /></td>
					<td><s:property value="specialPrice" /></td>

					<td><s:property value="fBDate" /></td>
				</tr>
			</s:iterator>
		</table>
	</div>
	<div class="depInfo">
		<div class="depInfo1">
		</div>
		<table class="depInfo2" align="center" cellspacing="0">
			<tr>
				<th width="50px">编号</th>
				<th width="170px">仓库类型</th>
				<th width="200px">所在城市</th>
				<th width="130px">仓库面积</th>
				<th width="70px">每间价格</th>
				<th width="100px">发布日期</th>
			</tr>
			<s:iterator value="#request.depList" var="dep">
				<tr>
					<td><a target="_blank"
						href="<s:url value="depInfo.action?id=%{id}"/>"><s:property
								value="id" /></a></td>
					<td><s:property value="deoptType" /></td>
					<td><s:property value="depotCity" /></td>
					<td><s:property value="depotAcreage" /></td>
					<td><s:property value="depotPrice" /></td>

					<td><s:property value="fBDate" /></td>
				</tr>
			</s:iterator>
		</table>
	</div>
</body>
</html>