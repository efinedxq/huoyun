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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>货运管理信息系统-招聘详细信息</title>
<style type="text/css">
body {
	margin: 0 auto;
	background-color: #faf9f8;
}

.content {
	width: 500px;
	height: 567px;
	margin: 0 auto;
	background: url("<%=path%>/images/tanchuang.png") no-repeat;
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
				<td align="right" style="width: 100px">招聘职位：</td>
				<td style="width: 32px; text-align: left"><input type="text"
					 value="${jobOne.job }"  disabled="disabled" /></td>
			</tr>
			<tr>
				<td align="right" style="width: 100px">招聘人数：</td>
				<td style="width: 32px; text-align: left"><input type="text"
					disabled="disabled" value="${jobOne.number }"/></td>
			</tr>
			<tr>
				<td align="right" style="width: 100px">性别要求：</td>
				<td style="width: 32px; text-align: left"><input type="text"
					name="kind" disabled="disabled" value="${jobOne.sex }" /></td>
			</tr>
			<tr>
				<td align="right" style="width: 100px; height: 21px;">年龄要求：</td>
				<td style="width: 32px; height: 21px; text-align: left"><input
					type="text" name="calling" disabled="disabled" value="${jobOne.age }"/></td>
			</tr>
			<tr>
				<td align="right" style="width: 100px; height: 24px">学历要求：</td>
				<td style="width: 32px; height: 24px; text-align: left"><input
					type="text" name="licenceNumber" disabled="disabled" value="${jobOne.knowledge }" /></td>
			</tr>
			<tr>
				<td align="right" style="width: 100px; height: 24px">专业要求：</td>
				<td style="width: 32px; height: 24px; text-align: left"><input
					type="text" name="licenceNumber" disabled="disabled" value="${jobOne.specialty }" /></td>
			</tr>
			<tr>
				<td align="right" style="width: 100px; height: 24px">工作经验：</td>
				<td style="width: 32px; height: 24px; text-align: left"><input
					type="text" name="licenceNumber" disabled="disabled" value="${jobOne.experience }" /></td>
			</tr>
			<tr>
				<td align="right" style="width: 100px; height: 24px">工作地点：</td>
				<td style="width: 32px; height: 24px; text-align: left"><input
					type="text" name="licenceNumber" disabled="disabled" value="${jobOne.city }"/></td>
			</tr>
			<tr>
				<td align="right" style="width: 100px; height: 24px">月薪：</td>
				<td style="width: 32px; height: 24px; text-align: left"><input
					type="text" name="licenceNumber" disabled="disabled" value="${jobOne.pay }" /></td>
			</tr>
			<tr>
				<td style="width: 100px; text-align: right">发布日期：</td>
				<td align="right" style="width: 32px; text-align: left"><input
					type="text" name="networkIP" disabled="disabled" value="${jobOne.fBDate }" /></td>
			</tr>
			<tr>
				<td style="width: 100px; height: 33px; text-align: right"
					valign="top">详细信息：</td>
				<td style="width: 32px; height: 33px; text-align: left" valign="top">
					<textarea style="width: 200px; height: 80px;" name="content">
					      ${jobOne.particularInfo }
					</textarea>
				</td>
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