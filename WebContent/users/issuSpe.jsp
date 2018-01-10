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
	<form name="spe" method="post" action="<%=path%>/user/speAdd?userId=${user.id}">
		<h3>发布专线信息</h3>
		<table>
			<tr>
				<td>出发地：</td>
				<td><select name="c1" id="s_province" onchange="onchange(1)">
				</select> <select name="c2" id="s_city" onchange="onchange(2)">
				</select> <select name="c3" id="s_county">
				</select> <input type="hidden" name="start" /></td>
			</tr>
			<tr>
				<td>到达地：</td>
				<td><select name="s1" id="e_province" onchange="onchange(1)">
				</select> <select name="s2" id="e_city" onchange="onchange(2)">
				</select> <select name="s3" id="e_county">
				</select> <input type="hidden" name="terminal" /></td>
			</tr>
			<tr>
				<td>线路描述：</td>
				<td><input type="text" name="bewrite" required="required" /></td>
			</tr>
			<tr>
				<td>车&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp型：</td>
				<td><select name="truckType">
						<option value="普通">普通</option>
						<option value="高栏">高栏</option>
						<option value="箱式">箱式</option>
						<option value="拖挂">拖挂</option>
						<option value="平板">平板</option>
						<option value="冷藏">冷藏</option>
						<option value="其他">其他</option>
				</select></td>
			</tr>
			<tr>
				<td>车&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp长：</td>
				<td><input type="text" name="truckLong" required="required" /></td>
			</tr>
			<tr>
				<td>载&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp重：</td>
				<td><input type="text" name="truckLoad" required="required" /></td>
			</tr>
			<tr>
				<td>专线报价：</td>
				<td><input type="text" name="specialPrice" required="required" /></td>
			</tr>
			<tr>
				<td>联系人员：</td>
				<td><input type="text" name="linkman" required="required" /></td>
			</tr>
			<tr>
				<td>联系电话：</td>
				<td><input type="text" name="phone" required="required" /></td>
			</tr>
			<tr>
				<td>有效日期：</td>
				<td><input type="date" name="term" required="required" /></td>
			</tr>
			<tr>
				<td>备&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp注：</td>
				<td><textarea name="content" required="required"></textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit" onclick="check()">提交</button>
					<button type="reset">重置</button>
				</td>
			</tr>
		</table>
	</form>
	<script type="text/javascript" src="<%=path%>/javascript/area.js">
		
	</script>
	<script type="text/javascript">
		_init_area();
		function check() {
			document.spe.start.value = document.spe.c1.value
					+ document.spe.c2.value + document.spe.c3.value;
			document.spe.terminal.value = document.spe.s1.value
					+ document.spe.s2.value + document.spe.s3.value;
			document.spe.submit();
		}
	</script>
</body>
</html>