<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html> 
	<head> 
	<title>用户登录</title> 
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1"> 

	<link rel="stylesheet" href="/jq/mobile/jquery.mobile.min.css" />
    <style>
	.ui-font-gray{color:#999; font-size:12px;}
	</style>
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.6.4.min.js"></script>
	<script type="text/javascript" src="/jq/mobile/jquery.mobile.min.js"></script>
</head> 
<body> 

<div id="user" data-role="page">

	<div data-role="header">
    	<a href="index.jsp" data-role="button" data-icon="home">返回首页</a>
		<h1>用户登录</h1>
        <a href="zxx_regist.php" data-role="button" data-icon="arrow-r">快速注册</a>
	</div><!-- /头部 -->

	<div data-role="content">	
		<form>
        	<ul data-role="listview" data-inset="true">
                <li data-role="fieldcontain">
                    <label for="loginName">用户名:</label>
                    <input type="text" name="name" id="loginName" value=""  />
                </li>
                <li data-role="fieldcontain">
                    <label for="loginPwd">密码:</label>
                    <input type="password" name="password" id="loginPwd" value=""  />
                </li>
                <li data-role="fieldcontain">
                    <input type="checkbox" name="autologin" id="loginAuto" checked  />
                    <label for="loginAuto">自动登录</label>
                </li>
                <li data-role="fieldcontain">
                    <input type="submit" value="登录" data-theme="b" />
                </li>
            </ul>
        </form>	
	</div><!-- /内容 -->

	<div data-role="footer">
		<h4>by Technology Brigade</h4>
	</div><!-- /底部 --></div><!-- /页面 -->

</body>
</html>

