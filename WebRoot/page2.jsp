<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<title>实时路况</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
.ui-font-gray {
	color: #999;
	font-size: 12px;
}
</style>
<link rel="stylesheet"
	href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>


<link
	href="http://api.map.baidu.com/library/TrafficControl/1.4/src/TrafficControl_min.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript" src="http://api.map.baidu.com/api?v=1.4"></script>
<script type="text/javascript"
	src="http://api.map.baidu.com/library/TrafficControl/1.4/src/TrafficControl_min.js"></script>

</head>
<body>

	<div id="user" data-role="page">

		<div data-role="header">
			<a href="index.jsp" data-role="button" data-icon="home">返回首页</a>
			<h1>实时路况</h1>
		</div>
		<!-- /头部 -->

		<div data-role="content">
			<form>
				<div style="width:100%;height:400px;border:1px solid gray"
					id="container"></div>
				<script type="text/javascript">
					function getCookie(name) {
						var arr, reg = new RegExp("(^| )" + name
								+ "=([^;]*)(;|$)");
						if (arr = document.cookie.match(reg))
							return (arr[2]);
						else
							return null;
					}
					//alert(getCookie('x') + "," + getCookie('y'));
					var map = new BMap.Map("container");
					map.centerAndZoom(new BMap.Point(getCookie('x'),
							getCookie('y')), 12);
					var ctrl = new BMapLib.TrafficControl({
						showPanel : true
					});
					map.addControl(ctrl);
					ctrl.setAnchor(BMAP_ANCHOR_BOTTOM_RIGHT);
				</script>
			</form>
		</div>
		<!-- /内容 -->

		<div data-role="footer">
			<h4>by Technology Brigade</h4>
		</div>
		<!-- /底部 -->
	</div>
	<!-- /页面 -->

</body>
</html>

