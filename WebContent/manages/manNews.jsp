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
			<td colspan="9" style="font-size: 14pt; color: #b11a55"><b>新闻信息管理</b></td>
		</tr>

	</table>
	<br />
	<table border="1px" align="center" cellspacing="0" width="720px">
		<tr>
			<th>编号</th>
			<th>新闻标题</th>

			<th>发布日期</th>

			<th>删除</th>

		</tr>
		<s:iterator value="#request.newsList" var="job" status="st">
			<tr>
				<td><a target="_blank"
					href="<%=path %>/newsInfo?id=${id}"> <s:property
							value="#st.index+1" /></a></td>
				<td><s:property value="newsTitle" /></td>
				<td><s:property value="fBDate" /></td>
				<td><a href="<%=path %>/man/newsDel?id=${id}">删除</a></td>
			</tr>
		</s:iterator>

		<tr>
			<td colspan="4">第${pageNo}页&nbsp&nbsp&nbsp&nbsp 共 ${pageCount}页
				&nbsp&nbsp&nbsp&nbsp <c:if test="${pageNo!=1}">
					<a href="<%=path %>/man/newsManList?pageNo=${pageNo-1}"> 上一页 </a>
				</c:if>&nbsp&nbsp&nbsp&nbsp <c:if test="${pageNo!=pageCount}">
					<a href="<%=path %>/man/newsManList?pageNo=${pageNo+1}" />">下一页 
					</a>
				</c:if>
			</td>
		</tr>
	</table>

</body>