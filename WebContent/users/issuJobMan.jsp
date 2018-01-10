<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=path %>/css/css1.css" rel="stylesheet" type="text/css" />
</head>
<body>

	<form name="job" method="post" action="<%=path%>/user/jobUpdate">
		<h3>发布招聘信息</h3>
		<table>
		    <tr>
		     	<td>编号</td>
			    <td><input type="text" name="id" value="${job.id }"
				     readonly="readonly" /></td>
		    </tr>
			<tr>
				<td>招聘职位：</td>
				<td><input type="text" name="job" required="required" value="${job.job }"/></td>
			</tr>

			<tr>
				<td>招聘人数：</td>
				<td><input type="number" name="number" required="required" value="${job.number }"/></td>
			</tr>
			<tr>
				<td>要求性别：</td>
				<td><input type="radio" name="sex" value="男" checked="checked" />男
					<input type="radio" name="sex" value="女" />女 <input type="radio"
					name="sex" value="不限" />不限</td>
			</tr>
			<tr>
				<td>要求年龄：</td>
				<td><input type="text" name="age" required="required" value="${job.age }"/></td>
			</tr>
			<tr>
				<td>要求学历：</td>
				<td><select name="knowledge">
						<option value="不限">不限</option>
						<option value="高中">高中</option>
						<option value="中专">中专</option>
						<option value="大专">大专</option>
						<option value="本科">本科</option>
						<option value="研究生">研究生</option>
				</select></td>
			</tr>
			<tr>
				<td>要求专业：</td>
				<td><input type="text" name="specialty" required="required" value="${job.specialty }" /></td>
			</tr>
			<tr>
				<td>工作经验：</td>
				<td><input type="text" name="experience" required="required" value="${job.experience }"/></td>
			</tr>
			<tr>
				<td>工作城市：</td>
				<td><input type="text" name="city" required="required" value="${job.city }"/></td>
			</tr>
			<tr>
				<td>月&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp薪：</td>
				<td><input type="text" name="pay" required="required" value="${job.pay }"/></td>
			</tr>
			<tr>
				<td>备&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp注：</td>
				<td><textarea name="particularInfo" required="required">
				     ${job.particularInfo }
				    </textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit" >修改</button>
					<button type="reset">重置</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
