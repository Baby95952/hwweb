<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html> 
<html>
<head>
<title>问题反馈</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" src="http://code.jquery.com/jquery-1.6.4.min.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<style>
.ui-font-gray {
	color: #999;
	font-size: 12px;
}
</style>

</head>
<body>

	<div data-role="page">

		<div data-role="header">
			<a href="index.jsp" data-role="button" data-icon="home" onclick="yes()">返回首页</a><!---->
			<h1>问题反馈</h1>
		</div>
		<!-- /头部 -->

		<div data-role="content">
			<form>
				<ul data-role="listview" data-inset="true">
					<li data-role="fieldcontain"><label for="quesTel">手机:</label>
						<input type="text" name="tel" id="quesTel" value="" /></li>
					<li data-role="fieldcontain"><label for="quesName">姓名:</label>
						<input type="text" name="name" id="quesName" value="" /></li>
					<li data-role="fieldcontain"><label for="quesEmail">邮箱:</label>
						<input type="email" name="email" id="quesEmail" value="" /></li>
					<li data-role="fieldcontain"><label for="quesContent">反馈内容:</label>
						<textarea id="quesContent" name="content"></textarea></li>
					<li data-role="fieldcontain"><input type="submit" value="提交反馈"
						data-theme="b" /></li>
				</ul>
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
