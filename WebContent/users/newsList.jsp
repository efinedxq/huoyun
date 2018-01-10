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
.newsInfo1 {
	width: 300px;
	height: 35px;
	background: url(<%=path%>/images/news.GIF) no-repeat;
	text-align: right;
}

.newsInfo2 th, .newsInfo2 td {
	height: 27px;
}
</style>
</head>
<body>
	<!-- 一次显示20条  -->
	<div class="newsInfo">
		<div class="newsInfo1"></div>
		<table class="newsInfo2" border="1px" align="center" cellspacing="0"
			width="720px">
			<tr>
				<th width="100px">编号</th>
				<th width="220px">新闻标题</th>
				<th width="125px">发布时间</th>

			</tr>
			<s:iterator value="#request.newsList" var="news" status="st">
				<tr>
					<td><a target="_blank"
						href="<s:url value="newsInfo?id=%{id}"/>"><s:property
								value="#st.index+1" /></a></td>
					<td><s:property value="newsTitle" /></td>
					<td><s:property value="fBDate" /></td>
				</tr>
			</s:iterator>
			<tr>
				<td colspan="3">第${pageNo}页&nbsp&nbsp&nbsp&nbsp 共 ${pageCount}页
					&nbsp&nbsp&nbsp&nbsp <c:if test="${pageNo!=1}">
						<a
							href="<%=path %>/newsList?pageNo=${pageNo-1}">
							上一页 </a>
					</c:if>&nbsp&nbsp&nbsp&nbsp <c:if test="${pageNo<pageCount}">
						<a
							href="<%=path %>/newsList?pageNo=${pageNo+1}">下一页
						</a>
					</c:if>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>