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
<title>货运管理信息系统-车辆详细信息</title>
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
				<td align="right" style="">出发地点：</td>
				<td style="width: 32px; text-align: left"><input type="text"
					name="linkman" disable value="${tru.start }" /></td>
			</tr>
			<tr>
				<td align="right" style="">到达地点：</td>
				<td style="width: 32px; text-align: left"><input type="text"
					name="companyName" disable value="${tru.terminal }" /></td>
			</tr>

			<tr>
				<td align="right" style=" height: 21px;">货运车辆类型：</td>
				<td style="width: 32px; height: 21px; text-align: left"><input
					type="text" name="calling" disable value="${tru.truckType }" /></td>
			</tr>
			<tr>
				<td align="right" style=" height: 24px">车长：</td>
				<td style="width: 32px; height: 24px; text-align: left"><input
					type="text" name="licenceNumber" disable value="${tru.truckLong }"/></td>
			</tr>
			<tr>
				<td align="right" style=" height: 24px">载重：</td>
				<td style="width: 32px; height: 24px; text-align: left"><input
					type="text" name="licenceNumber" disable value="${tru.truckLoad }" /></td>
			</tr>


			<tr>
				<td style=" text-align: right">联系人：</td>
				<td align="right" style="width: 32px; text-align: left"><input
					type="text" name="networkIP" disable value="${tru.linkman }" /></td>
			</tr>
			<tr>
				<td style="text-align: right">联系电话：</td>
				<td align="right" style="width: 32px; text-align: left"><input
					type="text" name="networkIP" disable value="${tru.phone }" /></td>
			</tr>
			<tr>
				<td style=" text-align: right">发布日期：</td>
				<td align="right" style="width: 32px; text-align: left"><input
					type="text" name="networkIP" disable value="${tru.fBDate }" /></td>
			</tr>
			<tr>
				<td style=" text-align: right">有效日期：</td>
				<td align="right" style="width: 32px; text-align: left"><input
					type="text" name="networkIP" disable value="${tru.term }"/></td>
			</tr>
			<tr>
				<td style=" height: 33px; text-align: right"
					valign="top">备注：</td>
				<td style="width: 32px; height: 33px; text-align: left" valign="top">
					<textarea style="width: 200px; height: 80px;" name="content">${tru.content }
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