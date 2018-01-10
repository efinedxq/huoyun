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
    <title>货运管理信息系统-管理员登录</title>
    <style type="text/css">
	    .content{
	        width:397px;
			height:225px;
			margin:100px auto auto;
			background:url(../images/dengl.png) no-repeat;
			padding-top:125px;
			text-align:center;
	    }
	</style>
</head>
<body bgcolor="#cce0eb">
   <div class="content">
      <form method="post" action="<%=path %>/man/manLogin" name="manform">
      <table align="center">
	     <tr>
		   <td>名称：</td>
		   <td>
		      <input type="text" name="name" required="required"/> 
		   </td>
		 </tr>
		 <tr>
		   <td>密码：</td>
		   <td><input type="password" name="pass" required="required"/></td>
		 </tr>
		<tr>
		   <td><button type="submit" >登录</button></td>
		   <td><a type="button" href="<%=path %>/">返回</button></td>
		 </tr>
	  </table>
	  </form>
   </div>
</body>
</html>