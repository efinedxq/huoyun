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
<head >
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>货运管理信息系统-专线详细信息</title>
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
				<td align="right" style="width: 100px">出发地点：</td>
				<td style="width: 32px; text-align: left"><input type="text"
					name="linkman" disabled value="${spe.start }" /></td>
			</tr>
			<tr>
				<td align="right" style="width: 100px">到达地点：</td>
				<td style="width: 32px; text-align: left"><input type="text"
					name="companyName" disabled value="${spe.terminal }" /></td>
			</tr>
			<tr>
				<td align="right" style="width: 100px">专线描述：</td>
				<td style="width: 32px; text-align: left"><input type="text"
					name="kind"  disabled value="${spe.bewrite }"  /></td>
			</tr>
			<tr>
				<td align="right" style="width: 100px; height: 21px;">货运车辆类型：</td>
				<td style="width: 32px; height: 21px; text-align: left"><input
					type="text" name="calling"  disabled value="${spe.truckType }"  /></td>
			</tr>
			<tr>
				<td align="right" style="width: 100px; height: 24px">车长：</td>
				<td style="width: 32px; height: 24px; text-align: left"><input
					type="text" name="licenceNumber" disabled value="${spe.truckLong }"  /></td>
			</tr>
			<tr>
				<td align="right" style="width: 100px; height: 24px">载重：</td>
				<td style="width: 32px; height: 24px; text-align: left"><input
					type="text" name="licenceNumber" disabled value="${spe.truckLoad }" /></td>
			</tr>
			<tr>
				<td align="right" style="width: 100px; height: 24px">专线报价：</td>
				<td style="width: 32px; height: 24px; text-align: left"><input
					type="text" name="licenceNumber"  disabled value="${spe.specialPrice }"  /></td>
			</tr>

			<tr>
				<td style="width: 100px; text-align: right">联系人：</td>
				<td align="right" style="width: 32px; text-align: left"><input
					type="text" name="networkIP"  disabled value="${spe.linkman }"  /></td>
			</tr>
			<tr>
				<td style="width: 100px; text-align: right">联系电话：</td>
				<td align="right" style="width: 32px; text-align: left"><input
					type="text" name="networkIP"  disabled value="${spe.phone }"  /></td>
			</tr>
			<tr>
				<td style="width: 100px; text-align: right">发布日期：</td>
				<td align="right" style="width: 32px; text-align: left"><input
					type="text" name="networkIP"  disabled value="${spe.fBDate }" /></td>
			</tr>
			<tr>
				<td style="width: 100px; text-align: right">有效日期：</td>
				<td align="right" style="width: 32px; text-align: left"><input
					type="text" name="networkIP"  disabled value="${spe.term }"  /></td>
			</tr>
			<tr>
				<td style="width: 100px; height: 33px; text-align: right"
					valign="top">备注：</td>
				<td style="width: 32px; height: 33px; text-align: left" valign="top">
					<textarea style="width: 200px; height: 80px;"  name="content">
			             ${spe.content}
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