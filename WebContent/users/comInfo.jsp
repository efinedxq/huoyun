<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>货运管理信息系统-企业详细信息</title>
    <style type="text/css">
        body {
            margin:0 auto;
            background-color: #faf9f8;
        }
		
        .content {   
		    width:500px;
		    height: 567px;
		    margin:0 auto;
            background: url("<%=path%>/images/tanchuang.png") no-repeat;
        }
	    
    </style>
</head>
<body>
            <div class="content">
                <table border="0" cellpadding="0" cellspacing="0" align="center">
				    <tr height="150px">
					    <td></td><td></td>
					</tr>
                    <tr>
                        <td align="right" style="width: 100px">联系人：</td>
                        <td style="width: 32px; text-align: left">
                            <input type="text" name="linkman" disabled="disabled"  value="${qyUser.linkman}"/>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 100px"> 企业名称：</td>
                        <td style="width: 32px; text-align: left">
                            <input type="text"  name="companyName" disabled="disabled" value="${qyUser.companyName}" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 100px">企业性质：</td>
                        <td style="width: 32px; text-align: left">
                            <input type="text"  name="kind" disabled="disabled" value="${qyUser.kind}" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 100px; height: 21px;">所属行业：</td>
                        <td style="width: 32px; height: 21px; text-align: left">
                             <input type="text"  name="calling" disabled="disabled" value="${qyUser.calling}"/>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 100px; height: 24px">营业执照号：</td>
                        <td style="width: 32px; height: 24px; text-align: left">
                            <input type="text"  name="licenceNumber" disabled="disabled" value="${qyUser.licenceNumber}" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 100px; height: 9px">公司地址：</td>
                        <td style="width: 32px; height: 9px; text-align: left">
                            <input type="text"  name="address" disabled="disabled" value="${qyUser.address}" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 100px">联系电话：</td>
                        <td style="width: 32px; text-align: left">
					        <input type="text"  name="phone" disabled="disabled" value="${qyUser.phone}"/>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 100px">传真：</td>
                        <td style="width: 32px; text-align: left">
                             <input type="text"  name="fax" disabled="disabled" value="${qyUser.fax}"/>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px; text-align: right">E-mail：</td>
                        <td align="right" style="width: 32px; text-align: left">
                            <input type="text"  name="email" disabled="disabled" value="${qyUser.email}"/>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px; text-align: right">公司网址：</td>
                        <td align="right" style="width: 32px; text-align: left">
                            <input type="text"  name="networkIP" disabled="disabled" value="${qyUser.networkIP}" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 33px; text-align: right" valign="top">公司介绍：</td>
                        <td style="width: 32px; height: 33px; text-align: left" valign="top">
                            <textarea style="width:200px;height:80px;" name="content" disabled="disabled" >
                               ${qyUser.content }
                            </textarea>
                    </tr>
                    <tr>
                        <td colspan="2" style="height: 31px; text-align: center;">
                             <input id="Button1" type="button" onclick="window.close();" value="关闭" />
                        </td>
                    </tr>
                </table>   
            </div>
      
</body>
</html>