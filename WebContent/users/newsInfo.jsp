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
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>货运管理信息系统-新闻详细信息</title>
<style type="text/css">
body {
	margin: 0 auto;
	background-color: #faf9f8;
}

.content {
	width: 500px;
	height: 567px;
	margin: 0 auto;
	background: url("images/tanchuang.png") no-repeat;
}
</style>
</head>
<body>
	<div class="content">
		<table border="0" cellpadding="0" cellspacing="0" align="center">
			<tr height="150px">
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td align="right" style="width: 100px">新闻标题：</td>
				<td style="text-align: left">${news.newsTitle }</td>
			</tr>
			<tr>
				<td align="right" style="width: 100px">发布时间：</td>
				<td style="text-align: left">${news.fBDate }</td>
			</tr>
			<tr>
				<td align="right" style="width: 100px" valign="top">新闻内容：</td>
				<td style="width: 300px; text-align: left">${ news.newsContent }</td>
			</tr>
			<tr>
				<td colspan="2" style="height: 31px; text-align: center;"><input
					id="Button1" type="button" onclick="window.close();" value="关闭" />
				</td>
			</tr>
		</table>
	</div>

</body>
</html>