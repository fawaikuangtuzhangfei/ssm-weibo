<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>收到的评论</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/bootstrap-datetimepicker.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/login.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/comment.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/style.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/zoomify.min.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.12.0.min.js "></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/longPolling.js "></script>

<script type="text/javascript">
	$(document).ready(function() {
		$("#bt0").click(function() {
			$("#com0").toggle();
		});
		$("#bt1").click(function() {
			$("#com1").toggle();
		});
		$("#bt2").click(function() {
			$("#com2").toggle();
		});
		$("#bt3").click(function() {
			$("#com3").toggle();
		});
		$("#bt4").click(function() {
			$("#com4").toggle();
		});
		$("#bt5").click(function() {
			$("#com5").toggle();
		});
		$("#bt6").click(function() {
			$("#com6").toggle();
		});
		$("#bt7").click(function() {
			$("#com7").toggle();
		});
		$("#bt8").click(function() {
			$("#com8").toggle();
		});
		$("#bt9").click(function() {
			$("#com9").toggle();
		});
	})
</script>
<!-- 导航栏 -->
<jsp:include page="../web/navNoLR.jsp"></jsp:include>
</head>
<body style="padding: 80px">


	<!-- 正文 -->
	<div class="container">
		<!-- 右侧个人简单信息 -->
		<div style="width: 20%; float: right;">
			<!-- 头像 -->
			<img src="/imgUpload/${user.face}" height="100px " width="100px "
				class="img-circle " align="center">
			<!-- 昵称 -->
			<br> <span style="font-size: 20px;">${user.username}&nbsp;&nbsp;</span>
			<br> <br>
			<table align="center" style="table-layout: fixed;">
				<tr>
					<td><a href="../weibo/showOne.do">${countWeibo }微博&nbsp;</a></td>
					<td><a href="../relation/showFollowList.do?userId=${user.id }&nowId=${user.id}">${followCount }关注&nbsp;</a></td>
					<td><a href="../relation/showFanList.do?userId=${user.id }&nowId=${user.id}">${fanCount }粉丝</td>
				</tr>
			</table>
			<br> 
			<c:if test="${user.sex==0 }">
				<span style="font-size: 15px">♀ </span>
			</c:if>
			<c:if test="${user.sex==1 }">
				<span style="font-size: 15px">♂ </span>
			</c:if>
			<span style="font-size: 15px"> ${user.province } | ${user.city } </span>
		</div>

		<div style="width: 80%; float: left;">
			<div class="container" style="width: 850px; background-color: #fff;" align="left">
		<h2 style="color: #333; margin:1px;">收到的评论<span style="color: #f00;" class="glyphicon glyphicon-comment"></span></h2>
			</div>
			<br>
			<c:forEach items="${commentList }" var="comment" varStatus="status">
				<!-- 头部 -->
				<div class="container" style="width: 850px; background-color: white;">
					<!-- 头像 -->
					<div
						style="cursor: pointer; height: 50px; width: 50px; margin: 10px; float: left;">
						<c:if test="${comment.nowUserId==user.id}">
							<img onclick="javascript:clickme();"
								src="/imgUpload/${comment.face}" width="50px" height="50px"
								class="img-circle">
						</c:if>
						<c:if test="${comment.nowUserId!=user.id}">
							<img onclick="javascript:clickother(${comment.nowUserId});"
								src="/imgUpload/${comment.face}" width="50px" height="50px"
								class="img-circle">
						</c:if>
					</div>
					<div style="text-align: left; margin: 10px; float: left;">
						<!-- 昵称 -->
						<a style="color: #333; font-size: 15px" href="javascrip:;">${comment.username }</a>
						<!-- 时间 -->
						<p style="color: #999; font-size: 15px">${comment.commentTime }</p>
					</div>
				</div>
				<div class="container" style="width: 850px; background-color: #fff; margin-bottom: 10px;">
					<!-- 文字 -->
					<div style="text-align: left; margin-left: 85px" >
						<p style="color: #333; font-size: 15px; text-align: left;">${comment.commentContent }</p>
					</div>
					<!-- 源微博 -->
					<!-- 简略微博内容 -->
					<div style="background-color: #eaeaec;float: left;margin-left: 85px; margin-bottom: 10px;">
						<span style="color: #999;">评论了我的微博</span>
						<span style="color: #333;">&nbsp;:&nbsp;</span>
						<a style="color: #333; font-size: 15px" href="../weibo/showSingle.do?weiboId=${comment.weiboId}">${comment.content }</a>
					</div>
				</div>
				<br>
			</c:forEach>
			<div class="container" style="width: 850px;">
				<!-- 分页 -->
				<!-- 实现分页 -->
			<!-- 分页 -->
			<div align="center" style="font-size: 20px">
				共${count}条消息|共${pageSize}页|
				<c:forEach var="i" begin="1" end="${pageSize}">
					<a
						href="../mention/${wz}page=${i}"
						<c:if test="${curpage==i}">
			  style="color: red"
			</c:if>>
						${i} </a>
				</c:forEach>
			</div>

		</div>
	</div>
	<script type="text/javascript">
	//转发微博
	function repost(weiboId) {
		$('#Modal'+weiboId).modal('toggle');
	}
	
	//跳至自己的主页
	function clickme() {
		window.location="../weibo/showOne.do";
	}

	//跳至userId的用户主页
	function clickother(userId) {
		var url = "../user/showOne.do?userId=" + userId;
		window.location=url;
	}
	
	//跳至所选微博页
	function clickWeibo(weiboId) {
		var url = "../weibo/showSingle.do?weiboId=" + weiboId;
		window.open(url);
	}
	

	</script>

	<script type="text/javascript "
		src="${pageContext.request.contextPath }/js/jquery-3.3.1.js "></script>
	<script type="text/javascript "
		src="${pageContext.request.contextPath }/js/bootstrap.js "></script>
	<script type="text/javascript "
		src="${pageContext.request.contextPath }/js/bootstrap-datetimepicker.js "></script>
	<script type="text/javascript "
		src="${pageContext.request.contextPath }/js/bootstrap-datetimepicker.zh-CN.js "></script>
	<script type="text/javascript "
		src="${pageContext.request.contextPath }/js/date.js "></script>
	<script type="text/javascript "
		src="${pageContext.request.contextPath }/js/jquery.flexText.js "></script>
	<script type="text/javascript "
		src="${pageContext.request.contextPath }/js/comment.js"></script>
	<script type="text/javascript "
		src="${pageContext.request.contextPath }/js/zoomify.js"></script>
	<script type="text/javascript">
		$('.example img').zoomify();
		
		// 长轮询
		$.ajax(getNotice);
	</script>
</body>

</html>