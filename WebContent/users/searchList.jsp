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
	<c:if test="${freList!=null}">
		<div class="freInfo">
			<div class="freInfo1"></div>
			<table class="freInfo2" align="center" cellspacing="0">
				<tr>
					<th width="50px">编号</th>
					<th width="200px">出发地</th>
					<th width="200px">到达地</th>
					<th width="110px">货物种类</th>
					<th width="70px">重量</th>
					<th width="100px">发布日期</th>
				</tr>
				<s:iterator value="#request.freList" var="fre" status="st">
					<tr>
						<td><a target="_blank"
							href="<s:url value="freInfo.action?id=%{id}"/>"><s:property
									value="#st.index+1" /></a></td>
						<td><s:property value="start" /></td>
						<td><s:property value="terminal" /></td>
						<td><s:property value="freightType" /></td>
						<td><s:property value="freightWeight" /></td>

						<td><s:property value="fBDate" /></td>
					</tr>
				</s:iterator>
			</table>
		</div>
	</c:if>
	<c:if test="${truList!=null}">
		<div class="truInfo">
			<div class="truInfo1"></div>
			<table class="truInfo2" align="center" cellspacing="0">
				<tr>
					<th width="50px">编号</th>
					<th width="200px">出发地</th>
					<th width="200px">到达地</th>
					<th width="110px">车型</th>
					<th width="80px">载重</th>
					<th width="110px">发布日期</th>
				</tr>
				<s:iterator value="#request.truList" var="tru" status="st">
					<tr>
						<td><a target="_blank"
							href="<s:url value="truInfo.action?id=%{id}"/>"><s:property
									value="#st.index+1" /></a></td>
						<td><s:property value="start" /></td>
						<td><s:property value="terminal" /></td>
						<td><s:property value="truckType" /></td>
						<td><s:property value="truckLoad" /></td>
						<td><s:property value="fBDate" /></td>
					</tr>
				</s:iterator>
			</table>
		</div>
	</c:if>
	<c:if test="${depList!=null}">
		<div class="depInfo">
			<div class="depInfo1"></div>
			<table class="depInfo2" align="center" cellspacing="0">
				<tr>
					<th width="50px">编号</th>
					<th width="170px">仓库类型</th>
					<th width="200px">所在城市</th>
					<th width="130px">仓库面积</th>
					<th width="70px">每间价格</th>
					<th width="100px">发布日期</th>
				</tr>
				<s:iterator value="#request.depList" var="dep" status="st">
					<tr>
						<td><a target="_blank"
							href="<s:url value="depInfo.action?id=%{id}"/>"><s:property
									value="#st.index+1" /></a></td>
						<td><s:property value="deoptType" /></td>
						<td><s:property value="depotCity" /></td>
						<td><s:property value="depotAcreage" /></td>
						<td><s:property value="depotPrice" /></td>

						<td><s:property value="fBDate" /></td>
					</tr>
				</s:iterator>
			</table>
		</div>
	</c:if>
	<c:if test="${speList!=null}">
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
			</table>
		</div>
	</c:if>
	<c:if test="${jobList!=null}">
		<div class="jobInfo">
			<div class="jobInfo1"></div>
			<table class="jobInfo2" align="center" cellspacing="0">
				<tr>
					<td width="50px">编号</td>
					<th width="200px">招聘职位</th>
					<th width="120px">招聘人数</th>
					<th width="120px">要求性别</th>
					<th width="120px">要求年龄</th>
					<th width="120px">要求学历</th>
				</tr>
				<s:iterator value="#request.jobList" var="job" status="st">
					<tr>
						<td><a target="_blank"
							href="<s:url value="jobInfo.action?id=%{id}"/>"><s:property
									value="#st.index+1" /></a></td>
						<td><s:property value="job" /></td>
						<td><s:property value="number" /></td>
						<td><s:property value="sex" /></td>
						<td><s:property value="age" /></td>

						<td><s:property value="knowledge" /></td>
					</tr>
				</s:iterator>
			</table>
		</div>
	</c:if>
	<c:if test="${comList!=null}">
		<div class="comInfo">
			<div class="comInfo1"></div>
			<table class="comInfo2" align="center" cellspacing="0">
				<tr>
					<th width="50px">编号</th>
					<th width="260px">企业名称</th>
					<th width="80px">企业性质</th>
					<th width="120px">所属行业</th>
					<th width="100px">联系人</th>
					<th width="100px">联系方式</th>
				</tr>
				<s:iterator value="#request.comList" var="qyUser" status="st">
					<tr>
						<td><a target="_blank"
							href="<s:url value="qyUserInfo?id=%{id}"/>"><s:property
									value="#st.index+1" /></a></td>
						<td><s:property value="companyName" /></td>
						<td><s:property value="kind" /></td>
						<td><s:property value="calling" /></td>
						<td><s:property value="linkman" /></td>

						<td><s:property value="phone" /></td>
					</tr>
				</s:iterator>
			</table>
		</div>
	</c:if>
</body>