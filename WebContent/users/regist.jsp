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
.regist {
	width: 300px;
	height: 35px;
	background: url(images/huiyuanzhuce.gif) no-repeat;
	text-align: right;
}
</style>
</head>
<body>
	<div class="regist"></div>


	<table>
		<tr>
			<td>注册类型：<input type="radio" name="type" value=""
				checked="checked" onclick="change()" />个人注册 <input type="radio"
				name="type" value="" onclick="change()" />企业注册
			</td>
		</tr>
	</table>
	<font color="red">${msg}</font>
	<br />
	<div id="f1">
		<form method="post" action="<%=path%>/grRegist" name="formGr">
			<table>
				<tr>
					<th colspan="2">个人注册</th>
				</tr>
				<tr>
					<td>登录名：</td>
					<td><input type="text" name="name" required /></td>
				</tr>
				<tr>
					<td>输入密码：</td>
					<td><input type="password" name="pass" required /></td>
				</tr>
				<tr>
					<td>重复密码：</td>
					<td><input type="password" name="pass1" required /></td>
				</tr>
				<tr>
					<td>密码提示问题：</td>
					<td><input type="text" name="passQuestion" required /></td>
				</tr>
				<tr>
					<td>密码提示答案：</td>
					<td><input type="text" name="passSolution" required /></td>
				</tr>
				<tr>
					<td>联系人：</td>
					<td><input type="text" name="linkman" required /></td>
				</tr>
				<tr>
					<td>联系方式：</td>
					<td><input type="tel" name="phone" required /></td>
				</tr>
				<tr>
					<td>地&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp址：</td>
					<td><input type="text" name="address" required /></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<button type="submit" onclick="checkGr()">提交</button>
						<button type="reset">重置</button>
					</td>
				</tr>
			</table>
		</form>
	</div>

	<div id="f2" style="display: none">
		<form method="post" action="<%=path%>/qyRegist" name="formQy">
			<table>
				<tr>
					<th colspan="2">企业注册</th>
				</tr>
				<tr>
					<td>登录名：</td>
					<td><input type="text" name="name" required /></td>
				</tr>
				<tr>
					<td>输入密码：</td>
					<td><input type="password" name="pass" required /></td>
				</tr>
				<tr>
					<td>重复密码：</td>
					<td><input type="password" name="pass1" required /></td>
				</tr>
				<tr>
					<td>密码提示问题：</td>
					<td><input type="text" name="passQuestion" required /></td>
				</tr>
				<tr>
					<td>密码提示答案：</td>
					<td><input type="text" name="passSolution" required /></td>
				</tr>
				<tr>
					<td>联系人：</td>
					<td><input type="text" name="linkman" required /></td>
				</tr>
				<tr>
					<td>联系方式：</td>
					<td><input type="tel" name="phone" required /></td>
				</tr>
				<tr>
					<td>地&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp址：</td>
					<td><input type="" name="address" required /></td>
				</tr>
				<tr>
					<td>企业名称：</td>
					<td><input type="text" name="companyName" required /></td>
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
					<td><input type="text" name="calling" required /></td>
				</tr>
				<tr>
					<td>营业执照号：</td>
					<td><input type="text" name="licenceNumber" required /></td>
				</tr>
				<tr>
					<td>传真：</td>
					<td><input type="text" name="fax" required /></td>
				</tr>
				<tr>
					<td>电子邮件：</td>
					<td><input type="email" name="email" required /></td>
				</tr>
				<tr>
					<td>网址：</td>
					<td><input type="url" name="networkIP" required /></td>
				</tr>
				<tr>
					<td valign="top">企业简介：</td>
					<td><textarea rows="5" cols="35" type="text" name="content"
							required></textarea></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<button type="submit" onclick="checkQy()">提交</button>
						<button type="reset">重置</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
	<script type="text/javascript">
		function checkGr() {
			if (document.formGr.pass.value != document.formGr.pass1.value) {
				alert("密码输入不一致");
				
			} else {

				document.formAdd.submit();
			}
		}

		function checkQy() {
			if (document.formQy.pass.value != document.formQy.pass1.value) {
				alert("密码输入不一致");
				
			} else {
				document.formAdd.submit();
			}

		}

		function change() {
			var obj = document.getElementsByName('type');
			var div1 = document.getElementById("f1");
			var div2 = document.getElementById("f2");

			if (obj[0].checked == true) {

				div2.style.display = "none";
				div1.style.display = "";
			} else {
				div2.style.display = "";

				div1.style.display = "none";
			}

		}
		change();
	</script>
</body>
</html>