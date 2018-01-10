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
		    <td align="center" style="font-size:14pt;color:#b11a55"><b>发布新闻信息</b></td>
		</tr>
    </table>
	<br/>
	<form  method="post" action="<%=path %>/man/newsAdd" name="issuNewsForm">
    <table  cellspacing="0" >	
		<tr>
			<td>新闻标题：</td>
			<td>
			   <input type="text" name="newsTitle"  />
			</td>
			 
		</tr>
		<tr>
			<td valign="top" >新闻内容：</td>
			<td>
			   <textarea rows="25" cols="80" name="newsContent"></textarea>
			</td>
			 
		</tr>
		<tr>
			 <td></td>
			 <td >
		      <button type="submit" onclick="check()">确定</button>
		   </td>
		</tr>
	</table>
	</form>
	<script language="javascript">
		    function check()
		    {
		        if(document.issuNewsForm.newsTitle.value=="")
		        {
		            alert("请输入标题");
		            return false;
		        }
		        if(document.issuNewsForm.newsContent.value=="")
		        {
		            alert("请输入内容");
		            return false;
		        }
		        document.issuNewsForm.submit();
		    } 
     </script>
</body>