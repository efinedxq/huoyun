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
<link href="../css/css1.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="freInfo">
		<div class="freInfo1">
			<a href="">更多&gt&gt</a>
		</div>
		<table class="freInfo2" align="center" cellspacing="1">
			<tr>
				<th width="125px">出发地</th>
				<th width="125px">到达地</th>
				<th width="80px">货物种类</th>
				<th width="80px">重量</th>
				<th width="125px">发布日期</th>
				<th width="100px">详细信息</th>
				<th width="45">删除
				</td>
			</tr>
			<tr>
				<td>山东青岛</td>
				<td>山东济南</td>
				<td>新鲜鱼</td>
				<td>2吨</td>
				<td>2017-12-29</td>
				<td><a href="#">详细信息</a></td>
				<td><a href="">删除</a></td>
			</tr>
			<tr>
				<td>山东青岛</td>
				<td>山东济南</td>
				<td>新鲜鱼</td>
				<td>2吨</td>
				<td>2017-12-29</td>
				<td><a href="#">详细信息</a></td>
				<td><a href="">删除</a></td>
			</tr>
			<tr>
				<td>山东青岛</td>
				<td>山东济南</td>
				<td>新鲜鱼</td>
				<td>2吨</td>
				<td>2017-12-29</td>
				<td><a href="#">详细信息</a></td>
				<td><a href="">删除</a></td>
			</tr>
			<tr>
				<td>山东青岛</td>
				<td>山东济南</td>
				<td>新鲜鱼</td>
				<td>2吨</td>
				<td>2017-12-29</td>
				<td><a href="#">详细信息</a></td>
				<td><a href="">删除</a></td>
			</tr>
			<tr>
				<td>山东青岛</td>
				<td>山东济南</td>
				<td>新鲜鱼</td>
				<td>2吨</td>
				<td>2017-12-29</td>
				<td><a href="#">详细信息</a></td>
				<td><a href="">删除</a></td>
			</tr>
		</table>
	</div>
	<div class="truInfo">
		<div class="truInfo1">
			<a href="">更多&gt&gt</a>
		</div>
		<table class="truInfo2" align="center" cellspacing="1">
			<tr>
				<th width="125px">出发地</th>
				<th width="125px">到达地</th>
				<th width="80px">车型</th>
				<th width="80px">载重</th>
				<th width="125px">发布日期</th>
				<th width="100px">详细信息</th>
				<th width="45">删除
				</td>
			</tr>
			<tr>
				<td>山东青岛</td>
				<td>山东济南</td>
				<td>大卡</td>
				<td>2吨</td>
				<td>2017-12-29</td>
				<td><a href="#">详细信息</a></td>
				<td><a href="">删除</a></td>
			</tr>
			<tr>
				<td>山东青岛</td>
				<td>山东济南</td>
				<td>大卡</td>
				<td>2吨</td>
				<td>2017-12-29</td>
				<td><a href="#">详细信息</a></td>
				<td><a href="">删除</a></td>
			</tr>
			<tr>
				<td>山东青岛</td>
				<td>山东济南</td>
				<td>大卡</td>
				<td>2吨</td>
				<td>2017-12-29</td>
				<td><a href="#">详细信息</a></td>
				<td><a href="">删除</a></td>
			</tr>
			<tr>
				<td>山东青岛</td>
				<td>山东济南</td>
				<td>大卡</td>
				<td>2吨</td>
				<td>2017-12-29</td>
				<td><a href="#">详细信息</a></td>
				<td><a href="">删除</a></td>
			</tr>
			<tr>
				<td>山东青岛</td>
				<td>山东济南</td>
				<td>大卡</td>
				<td>2吨</td>
				<td>2017-12-29</td>
				<td><a href="#">详细信息</a></td>
				<td><a href="">删除</a></td>
			</tr>
		</table>
	</div>

	<div class="depInfo">
		<div class="depInfo1">
			<a href="">更多&gt&gt</a>
		</div>
		<table class="depInfo2" align="center" cellspacing="1">
			<tr>
				<th width="125px">仓库类型</th>
				<th width="125px">所在城市</th>
				<th width="80px">仓库面积</th>
				<th width="80px">每间价格</th>
				<th width="125px">发布日期</th>
				<th width="100px">详细信息</th>
				<th width="45">删除
				</td>
			</tr>
			<tr>
				<td>冰库</td>
				<td>山东济南</td>
				<td>300平米</td>
				<td>1000</td>
				<td>2017-12-29</td>
				<td><a href="#">详细信息</a></td>
				<td><a href="">删除</a></td>
			</tr>
			<tr>
				<td>冰库</td>
				<td>山东济南</td>
				<td>300平米</td>
				<td>1000</td>
				<td>2017-12-29</td>
				<td><a href="#">详细信息</a></td>
				<td><a href="">删除</a></td>
			</tr>
			<tr>
				<td>冰库</td>
				<td>山东济南</td>
				<td>300平米</td>
				<td>1000</td>
				<td>2017-12-29</td>
				<td><a href="#">详细信息</a></td>
				<td><a href="">删除</a></td>
			<tr>
				<td>冰库</td>
				<td>山东济南</td>
				<td>300平米</td>
				<td>1000</td>
				<td>2017-12-29</td>
				<td><a href="#">详细信息</a></td>
				<td><a href="">删除</a></td>
			</tr>
			<tr>
				<td>冰库</td>
				<td>山东济南</td>
				<td>300平米</td>
				<td>1000</td>
				<td>2017-12-29</td>
				<td><a href="#">详细信息</a></td>
				<td><a href="">删除</a></td>
			</tr>
		</table>
	</div>

</body>