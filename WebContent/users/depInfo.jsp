<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>货运管理信息系统-仓库详细信息</title>
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
                        <td align="right" style="width: 100px">仓库类型：</td>
                        <td style="width: 32px; text-align: left">
                            <input type="text" name="linkman" disabled="disabled" value="${dep.deoptType }"/>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 100px"> 所在城市：</td>
                        <td style="width: 32px; text-align: left">
                            <input type="text"  name="companyName" disabled="disabled" value="${dep.depotCity }"/>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 100px">所在地点：</td>
                        <td style="width: 32px; text-align: left">
                            <input type="text"  name="kind" disabled="disabled" value="${dep.depotSite }"/>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 100px; height: 21px;">仓库面积：</td>
                        <td style="width: 32px; height: 21px; text-align: left">
                             <input type="text"  name="calling" disabled="disabled" value="${dep.depotAcreage }"/>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 100px; height: 24px">仓库间数：</td>
                        <td style="width: 32px; height: 24px; text-align: left">
                            <input type="text"  name="licenceNumber" disabled="disabled" value="${dep.depotSum }"/>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 100px; height: 9px">仓库价钱：</td>
                        <td style="width: 32px; height: 9px; text-align: left">
                            <input type="text"  name="address" disabled="disabled" value="${dep.depotPrice }"/>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 100px">装载服务：</td>
                        <td style="width: 32px; text-align: left">
					        <input type="text"  name="phone" disabled="disabled" value="${dep.loading }"/>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 100px">包装服务：</td>
                        <td style="width: 32px; text-align: left">
                             <input type="text"  name="fax" disabled="disabled" value="${dep.packing }"/>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px; text-align: right">配送服务：</td>
                        <td align="right" style="width: 32px; text-align: left">
                            <input type="text"  name="email" disabled="disabled" value="${dep.send }"/>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px; text-align: right">联系人：</td>
                        <td align="right" style="width: 32px; text-align: left">
                            <input type="text"  name="networkIP" disabled="disabled" value="${dep.linkman }"/>
                        </td>
                    </tr>
					<tr>
                        <td style="width: 100px; text-align: right">联系方式：</td>
                        <td align="right" style="width: 32px; text-align: left">
                            <input type="text"  name="networkIP" disabled="disabled" value="${dep.phone }"/>
                        </td>
                    </tr>
					<tr>
                        <td style="width: 100px; text-align: right">有效日期：</td>
                        <td align="right" style="width: 32px; text-align: left">
                            <input type="text"  name="networkIP" disabled="disabled" value="${dep.term }"/>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 33px; text-align: right" valign="top">详细信息：</td>
                        <td style="width: 32px; height: 33px; text-align: left" valign="top">
                            <textarea style="width:200px;height:80px;" name="content" >
                                 ${dep.content }
                            </textarea>
                        </td>
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