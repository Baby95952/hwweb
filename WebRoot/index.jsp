<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>南通交警支队</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>

<script type="text/javascript"
	src="http://api.map.baidu.com/api?v=2.0&ak=25CGFXkcYY8DyALtxM99YuZga08bUOEl"></script>
<style>
.ui-font-gray {
	color: #999;
	font-size: 12px;
}
</style>
<script type="text/javascript">
	function a() {
		var geolocation = new BMap.Geolocation();
		geolocation.getCurrentPosition(function(r) {
			if (this.getStatus() == BMAP_STATUS_SUCCESS) {
				//alert('您的位置：' + r.point.lng + ',' + r.point.lat);
				document.cookie = "x=" + r.point.lng;
				document.cookie = "y=" + r.point.lat;
			} else {
				alert('failed' + this.getStatus());
			}
		}, {
			enableHighAccuracy : true
		});
	}
</script>


</head>



<body onload="a()">

	<div data-role="page">

		<div data-role="header">
			<h1>南通交警支队</h1>
		</div>
		<!-- /头部 -->

		<div data-role="content">
			<div data-role="navbar">
				<ul>
					<li><a href="page1.jsp" data-ajax="false"> <img
							src="images/web.png" />
							<h3>支队简介</h3>
					</a></li>
					<li><a href="TwoServlet" data-ajax="false"> <img
							src="images/near.png" />
							<h3>实时路况</h3>
					</a></li>
					<li><a href="page1.jsp" data-ajax="false"> <img
							src="images/star.png" />
							<h3>图书推荐</h3>
					</a></li>
					<li><a href="page4.jsp" data-ajax="false"> <img
							src="images/zoom.png" />
							<h3>违章查询</h3>
					</a></li>
					<li><a href="page5.jsp" data-ajax="false"> <img
							src="images/question.png" />
							<h3>问题反馈</h3>
					</a></li>
					<li><a href="page6.jsp" data-ajax="false"> <img
							src="images/user.png" />
							<h3>用户中心</h3>
					</a></li>
				</ul>
			</div>
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
