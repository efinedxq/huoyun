<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	
	<table align="center" cellspacing="1" width="720px">
		<tr>
		    <td align="center" style="font-size:14pt;color:#b11a55"><b>用户锁定</b></td>
		</tr>
        
    </table>
	<br/>
	<form  method="post" action="<%=path %>/man/qyUserLock?id=${id}&lock=0" name="formAdd">
    <table  cellspacing="0" >	
		<tr>
			<td>锁定原因：</td>
			<td>
			   <input type="text" name="lockCause"  />
			</td>
			 <td >
		       <button type="submit" onclick="check()">确定</button>
		   </td>
		</tr>
	</table>
	</form>
	<script language="javascript">
		    function check()
		    {
		        if(document.formAdd.lockCause.value=="")
		        {
		            alert("请输入");
		            return false;
		        }
		        
		        document.formAdd.submit();
		    } 
     </script>
</body>