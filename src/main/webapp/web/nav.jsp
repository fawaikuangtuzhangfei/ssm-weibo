<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!-- 导航栏 -->
<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<p class="navbar-text navbar-right">
				<a href="../weibo/show.do" class="navbar-link">实时微博</a>
			</p>
			<p class="navbar-text navbar-right">
				<a href="../weibo/showOne.do" class="navbar-link">我的首页</a>
			</p>
			<p class="navbar-text navbar-right">
				<a href="#" class="navbar-link">好友圈</a>
			</p>
			<!-- 用户信息 -->
			<input type="hidden" value="${user.username }" id="username">
			<input type="hidden" value="${user.nickname }" id="nickname">
			<input type="hidden" value="${user}">
			<div id="message"></div>
			<div class="container">
				<p class="navbar-text navbar-left">当前用户: ${user.username }</p>
				<p class="navbar-text navbar-left">
					<a href="../user/showUserinfo.do">修改个人资料</a>
				</p>
				<p class="navbar-text navbar-left">
					<a href="../user/exit.do">退出登录</a>
				</p>
				<form id="form-souso" style="margin-top: 12px;"
					action="../weibo/selectByContent.do" method="post">
					<input name="userId" id="userId" type="hidden" value="${user.id }">
					我的微博内容搜索:<input name="content" type="text" style="width: 50px">
					<button type="submit" id="souso">搜索</button>
				</form>
			</div>
		</div>
	</nav>