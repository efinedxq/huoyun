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
<link href="css/css1.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<br />
	<c:if test="${userType==1}">
		<form method="post" action="<%=path%>/user/grUserUpdate"
			name="formGr1">
			<table>
				<tr>
					<th colspan="2">修改密码</th>
				</tr>
				<tr>
					<td>输入密码：</td>
					<td><input type="password" name="pass" required /></td>
				</tr>
				<tr>
					<td colspan="2">
						<button type="submit">提交</button>
						<button type="reset">重置</button>
					</td>
				</tr>
			</table>
		</form>
		<form method="post" action="<%=path%>/user/grUserUpdate"
			name="formGr2">
			<table>
				<tr>
					<th colspan="2">修改基本信息</th>
				</tr>
				<tr>
					<td>密码提示问题：</td>
					<td><input type="text" name="passQuestion" required value="${user.passQuestion }"/></td>
				</tr>
				<tr>
					<td>密码提示答案：</td>
					<td><input type="text" name="passSolution" required value="${user.passSolution }"/></td>
				</tr>
				<tr>
					<td>联系人：</td>
					<td><input type="text" name="linkman" required value="${user.linkman }"/></td>
				</tr>
				<tr>
					<td>联系方式：</td>
					<td><input type="tel" name="phone" required value="${user.phone }"/></td>
				</tr>
				<tr>
					<td>地&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp址：</td>
					<td><input type="text" name="address" required value="${user.address }"/></td>
				</tr>
				<tr>
					<td colspan="2">
						<button type="submit">提交</button>
						<button type="reset">重置</button>
					</td>
				</tr>
			</table>
		</form>
	</c:if>
	<br />
	<c:if test="${userType==2}">
		<form method="post" action="<%=path%>/user/qyUserUpdate"
			name="formQy1">
			<table>
				<tr>
					<th colspan="2">修改密码</th>
				</tr>
				<tr>
					<td>输入密码：</td>
					<td><input type="password" name="pass" required /></td>
				</tr>
				<tr>
					<td colspan="2">
						<button type="submit">提交</button>
						<button type="reset">重置</button>
					</td>
				</tr>
			</table>
		</form>
		<form method="post" action="<%=path%>/user/qyUserUpdate"
			name="formQy2">
			<table>
				<tr>
					<th colspan="2">修改基本信息</th>
				</tr>
				<tr>
					<td>密码提示问题：</td>
					<td><input type="text" name="passQuestion" required value="${user.passQuestion }"/></td>
				</tr>
				<tr>
					<td>密码提示答案：</td>
					<td><input type="text" name="passSolution" required value="${user.passSolution }"/></td>
				</tr>
				<tr>
					<td>联系人：</td>
					<td><input type="text" name="linkman" required value="${user.linkman }"/></td>
				</tr>
				<tr>
					<td>联系方式：</td>
					<td><input type="tel" name="phone" required value="${user.phone }"/></td>
				</tr>
				<tr>
					<td>地&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp址：</td>
					<td><input type="" name="address" required value="${user.address }"/></td>
				</tr>
				<tr>
					<td>企业名称：</td>
					<td><input type="text" name="companyName" required value="${user.companyName }"/></td>
				</tr>
				<tr>
					<td>企业性质：</td>
					<td><select name="kind">
							<option value="私企">私企</option>
							<option value="国企">国企</option>
							<option value="外资">外资</option>
					</select>
				</tr>
				<tr>
					<td>所属行业：</td>
					<td><input type="text" name="calling" required value="${user.calling }"/></td>
				</tr>
				<tr>
					<td>营业执照号：</td>
					<td><input type="text" name="licenceNumber" required value="${user.licenceNumber }"/></td>
				</tr>
				<tr>
					<td>传真：</td>
					<td><input type="text" name="fax" required value="${user.fax }"/></td>
				</tr>
				<tr>
					<td>电子邮件：</td>
					<td><input type="email" name="email" required value="${user.email }"/></td>
				</tr>
				<tr>
					<td>网址：</td>
					<td><input type="url" name="networkIP" required value="${user.networkIP }"/></td>
				</tr>
				<tr>
					<td valign="top">企业简介：</td>
					<td><textarea rows="5" cols="35" type="text" name="content"
							required>${user.content }
					</textarea></td>
				</tr>
				<tr>
					<td colspan="2">
						<button type="submit">提交</button>
						<button type="reset">重置</button>
					</td>
				</tr>
			</table>
		</form>
	</c:if>
</body>
</html>