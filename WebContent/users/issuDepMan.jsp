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
	<!--  <div class="fbRight"></div> -->
	<form name="dep" method="post" action="<%=path%>/user/depUpdate">
		<h3>发布仓储信息</h3>
		<table>
		    <tr>
		      <td>编号</td>
		      <td><input type="text" name="id" value="${dep.id }" readonly="readonly"/>
		      </td>
		    </tr>
			<tr>
				<td>仓储类别：</td>
				<td><select name="deoptType">
						<option value="普通">普通</option>
						<option value="冷藏">冷藏</option>
						<option value="液体">液体</option>
						<option value="暖库">暖库</option>
						<option value="危险品">危险品</option>
						<option value="其它">其它</option>
				</select></td>
			</tr>
			<tr>
				<td>所在城市：</td>
				<td><select name="c1" id="s_province" onchange="onchange(1)">
				</select> <select name="c2" id="s_city" onchange="onchange(2)">
				</select> <select name="c3" id="s_county">
				</select> <input type="hidden" name="depotCity" value="${dep.depotCity }"/></td>

			</tr>
			<tr>
				<td>仓库地点：</td>
				<td><input type="text" name="depotSite" required value="${dep.depotSite }"/></td>
			</tr>
			<tr>
				<td>面&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp积：</td>
				<td><input type="text" name="depotAcreage" required value="${dep.depotAcreage }"/></td>
			</tr>
			<tr>
				<td>数&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp量：</td>
				<td><input type="number" name="depotSum" required value="${dep.depotSum }"/>(只能输入数字)</td>
			</tr>
			<tr>
				<td>价&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp格：</td>
				<td><input type="text" name="depotPrice" required value="${dep.depotPrice }"/>元/间</td>
			</tr>
			<tr>
				<td>配套服务：</td>
				<td><input type="checkbox" name="loading" value="支持装卸"
					checked="checked" />装卸 <input type="checkbox" name="packing"
					value="支持包装" checked="checked" />包装 <input type="checkbox"
					name="send" value="支持配送" checked="checked" />配送</td>
			</tr>
			<tr>
				<td>联系人员：</td>
				<td><input type="text" name="linkman" required value="${dep.linkman }"/></td>
			</tr>
			<tr>
				<td>联系电话：</td>
				<td><input type="text" name="phone" required  value="${dep.phone }"/></td>
			</tr>
			<tr>
				<td>有效日期：</td>
				<td><input type="date" name="term" required value="${dep.term }"/></td>
			</tr>
			<tr>
				<td>备&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp注：</td>
				<td><textarea name="content" required>${dep.content }
				</textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit" onclick="check()">修改</button>
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
			document.dep.depotCity.value = document.dep.c1.value
					+ document.dep.c2.value + document.dep.c3.value
			document.dep.submit();
		}
	</script>
</body>
</html>