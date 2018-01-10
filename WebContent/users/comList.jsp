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
.comInfo1 {
	width: 300px;
	height: 35px;
	background: url(<%=path%>/images/qiyexinxi.gif) no-repeat;
	text-align: right;
}

.comInfo2 th, .comInfo2 td {
	height: 27px;
}
</style>
</head>
<body>
	<!-- 一次显示20条  -->
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
			<s:iterator value="#request.qyUserList" var="qyUser" status="st">
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

			<tr>
				<td colspan="6">第${pageNo}页&nbsp&nbsp&nbsp&nbsp 共 ${pageCount}页
					&nbsp&nbsp&nbsp&nbsp <c:if test="${pageNo!=1}">
						<a href="<%=path %>/comList?pageNo=${pageNo-1}"> 上一页 </a>
					</c:if>&nbsp&nbsp&nbsp&nbsp <c:if test="${pageNo<pageCount}">
						<a href="<%=path %>/comList?pageNo=${pageNo+1}"> 下一页 </a>
					</c:if>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>