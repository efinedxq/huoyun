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
    <title>货运管理信息系统-管理员端</title>
    
    <link href="<%=path %>/css/css1.css" rel="stylesheet" type="text/css" />
	<style type="text/css">
	    .leftbg{
		    width:250px;
			height:610px;
			background:url(../images/hbei.png) no-repeat;
			background-size:100%;
		}
		.leftMenu{
		    width:156px;
			height:500px;
			margin:0 auto;
			margin-left:35px;
			padding-top:110px;
		}
		.leftMenu table{
		   width:156px;
		   background-color:#f5f0e4;
		   padding-left:10px;
		}
		.leftMenu tr{
		   height:30px;
		}
		
		.infoMan{
		    width:156px;
			
			margin:10px auto 0px;
			
		}
		.infoMan1{
		    width:156px;
			height:23px;
			margin:0px auto;
			background:url(../images/xinxiguanli.GIF) no-repeat;
			background-size:100%;
		}
		.userMan1{
		    width:156px;
			height:23px;
			margin:0px auto;
			background:url(../images/yonghuguanli.GIF) no-repeat;
		}
		.newsMan1{
		    width:156px;
			height:23px;
			margin:0px auto;
			background:url(../images/xinwenguanli.GIF) no-repeat;
		}
		.userMan,.newsMan{
		   margin:30px auto;
		}
		a{
		   color:#fff;
		}
		.infoMan a,.userMan a,.newsMan a{
		   color:#000;
		}
	</style>
</head>
<body bgcolor="#cce0eb">
        <div class="mainbox">
		    <table >
			<tr><td valign="top"  >
            <div class="left">
			   <div class="leftbg">
			       <div class="leftMenu">
				       <a  href="<%=path %>/man/manOut">退出</a>
				       <div class="infoMan">
					       <div class="infoMan1"></div>
						   <table >
						     <tr><td><a href="<%=path %>/man/freManList" target="leftMng">货源信息管理</a></td></tr>
							 <tr><td><a href="<%=path %>/man/truManList" target="leftMng">车源信息管理</a></td></tr>
							 <tr><td><a href="<%=path %>/man/speManList" target="leftMng">专线信息管理</a></td></tr>
							 <tr><td><a href="<%=path %>/man/depManList" target="leftMng">仓库信息管理</a></td></tr>
							 <tr><td><a href="<%=path %>/man/jobManList" target="leftMng">招聘信息管理</a></td></tr>
						   </table>
					   </div>
					   <div class="userMan">
					       <div class="userMan1"></div>
						   <table>
						     <tr><td><a href="<%=path %>/man/grUserList" target="leftMng">个人用户管理</a></td></tr>
							 <tr><td><a href="<%=path %>/man/qyUserList" target="leftMng">企业用户管理</a></td></tr>
							 
						   </table>
					   </div>
					   <div class="newsMan">
					       <div class="newsMan1"></div>
						   <table>
						     <tr><td><a href="<%=path %>/manages/manIssuNews.jsp" target="leftMng">发布新闻</a></td></tr>
							 <tr><td><a href="<%=path %>/man/newsManList" target="leftMng">管理新闻</a></td></tr>
							 
						   </table>
					   </div>
				   </div>
			   </div>
			</div></td>
			<td valign="top" style="background-color:#d4cca3" >
            <div class="right">
			     <iframe cellspacing="0" width="735px" height="600px" src="<%=path %>/man/newsManList" name="leftMng"></iframe>
			</div>
			</td>
			</tr>
			</table>
        </div>
      
</body>