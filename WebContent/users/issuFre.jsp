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
	<div class="fbRight"></div>
	<form name="fre" method="post" action="<%=path%>/user/freAdd?userId=${user.id}">
		<table>
			<tr>
				<td>出发地：</td>
				<td><select name="c1" id="s_province" onchange="onchange(1)">
				</select> <select name="c2" id="s_city" onchange="onchange(2)">
				</select> <select name="c3" id="s_county">
				</select>
				<input type="hidden" name="start" />
				</td>
			</tr>
			<tr>
				<td>到达地：</td>
				<td><select name="s1" id="e_province" onchange="onchange(1)">
				</select> <select name="s2" id="e_city" onchange="onchange(2)">
				</select> <select name="s3" id="e_county">
				</select>
				<input type="hidden" name="terminal" />
				</td>
			</tr>
			<tr>
				<td>货物种类：</td>
				<td><input type="text" name="freightType" required="required" /></td>
			</tr>
			<tr>
				<td>货物重量：</td>
				<td><input type="text" name="freightWeight" required="required" /></td>
			</tr>
			<tr>
				<td>货物单位：</td>
				<td><input type="radio" name="weightUnit" value="千克"/>千克
				    <input type="radio" name="weightUnit" value="吨" checked="checked"/>吨
				    <input type="radio" name="weightUnit" value="方"/>方
				    <input type="radio" name="weightUnit" value="件"/>件
			   </td>
			</tr>
			<tr>
				<td>联系人员：</td>
				<td><input type="text" name="linkman" required="required"/></td>
			</tr>
			<tr>
				<td>联系电话：</td>
				<td><input type="text" name="phone" required="required"/></td>
			</tr>
			<tr>
				<td>有效日期：</td>
				<td><input type="date" name="term" required="required"/></td>
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
	<script type="text/javascript" src="<%=path %>/javascript/area.js">
		
	</script>
	<script type="text/javascript">
		_init_area();
		function check() {
			document.fre.start.value = document.fre.c1.value
					+ document.fre.c2.value + document.fre.c3.value;
			document.fre.terminal.value = document.fre.s1.value
			 + document.fre.s2.value + document.fre.s3.value;
			document.dep.submit();
		}
	</script>
</body>
</html>