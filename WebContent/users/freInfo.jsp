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
    <title>货运管理信息系统-货源详细信息</title>
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
                        <td align="right" style="width: 100px">出发地点：</td>
                        <td style="width: 32px; text-align: left">
                            <input type="text" name="linkman" disabled value="${fre.start }"/>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 100px"> 达到地点：</td>
                        <td style="width: 32px; text-align: left">
                            <input type="text"  name="companyName" disabled value="${fre.terminal }"/>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 100px">货物类别：</td>
                        <td style="width: 32px; text-align: left">
                            <input type="text"  name="kind" disabled value="${fre.freightType }"/>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 100px; height: 21px;">货物重量：</td>
                        <td style="width: 32px; height: 21px; text-align: left">
                             <input type="text"  name="calling" disabled value="${fre.freightWeight }"/>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 100px; height: 24px">重量单位：</td>
                        <td style="width: 32px; height: 24px; text-align: left">
                            <input type="text"  name="licenceNumber"disabled value="${fre.weightUnit }"/>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px; text-align: right">联系人：</td>
                        <td align="right" style="width: 32px; text-align: left">
                            <input type="text"  name="networkIP" disabled value="${fre.linkman }"/>
                        </td>
                    </tr>
					<tr>
                        <td style="width: 100px; text-align: right">联系电话：</td>
                        <td align="right" style="width: 32px; text-align: left">
                            <input type="text"  name="networkIP" disabled value="${fre.phone }"/>
                        </td>
                    </tr>
					<tr>
                        <td style="width: 100px; text-align: right">有效日期：</td>
                        <td align="right" style="width: 32px; text-align: left">
                            <input type="text"  name="networkIP" disabled value="${fre.term }"/>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 33px; text-align: right" valign="top">详细信息：</td>
                        <td style="width: 32px; height: 33px; text-align: left" valign="top">
                            <textarea style="width:200px;height:80px;" name="content"disabled >
                             ${fre.content }
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