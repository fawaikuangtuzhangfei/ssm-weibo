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
<title>获得的转发</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/bootstrap-datetimepicker.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/login.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/comment.css">
<!-- github中textarea的css -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/zoomify.min.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.12.0.min.js "></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/longPolling.js "></script>

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
<body style="padding: 80px" class="row bg">
	

	<!-- 正文 -->
	<div class="container ">
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
					<td><a href="../relation/showFollowList.do?userId=${user.id }">${followCount }关注&nbsp;</a></td>
					<td><a href="../relation/showFanList.do?userId=${user.id }">${fanCount }粉丝</td>
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
	<h2 style="color: #333; margin:1px;">获得的转发<span style="color: #f00;" class="glyphicon glyphicon-share"></span></h2>
			</div>
			<br>
			<c:forEach items="${RepostList }" var="weibo" varStatus="status">
				<div id="weiboItem">
					<!-- 头部 -->
					<div class="container" style="width: 850px; background-color: white;">
						<!-- 头像 -->
						<div style="cursor: pointer; height: 50px; width: 50px; margin: 10px; float: left;">
						<c:if test="${weibo.userId==user.id}">
<img onclick="javascript:clickme();" src="/imgUpload/${weibo.face}" width="50px" height="50px" class="img-circle">
						</c:if>
						<c:if test="${weibo.userId!=user.id}">
<img onclick="javascript:clickother(${weibo.userId});" src="/imgUpload/${weibo.face}" width="50px" height="50px" class="img-circle">
						</c:if>
						</div>
						<!-- 昵称+日期 -->
						<div style="text-align: left; margin: 15px; float: left;">
							<a style="color: #333; font-size: 15px" href="javascrip:;">${weibo.username }</a><br>
							<span style="color: #fd00009c; font-size: 15px ">转发于&nbsp;&nbsp;&nbsp;&nbsp;${weibo.postTime }</span>
						</div>
					</div>
					<!-- 内容 -->
					<div class="container" style="width: 850px; background-color: #fff;">
						<!-- 文字 -->
						<!-- onclick="javascript:clickWeibo(${weibo.id});" -->
						<div style="text-align: left; margin-left: 85px" >
							<p style="color: #333; font-size: 15px; text-align: left;">${weibo.content }</p>
						</div>
					</div>
<!-- 头部 -->
<div class="container" style="width: 850px; background-color: #eaeaec;">
	<!-- 头像 -->
	<div style="cursor: pointer; height: 30px; width: 30px;	margin: 10px; float: left; margin-left: 100px;">
		
		<c:if test="${weibo.userId==user.id }">
<img onclick="javascript:clickme();" src="/imgUpload/${user.face}" width="40px" height="40px" class="img-circle">
		</c:if>
		<c:if test="${weibo.userId!=user.id }">
<img onclick="javascript:clickother(${weibo.userId});" src="/imgUpload/${weibo.face}" width="40px" height="40px" class="img-circle">
		</c:if>
	</div>
	<!-- 昵称+日期 -->
	<div
		style="text-align: left; margin: 10px; margin-left: 20px; float: left;">
		<a style="color: #333; font-size: 14px" href="javascrip:;">${weibo.username }</a><br>
	</div>
</div>
<div class="container" style="width: 850px; background-color: #eaeaec;">
	<!-- 文字 -->
	<!-- onclick="javascript:clickWeibo(${weibo.id});" -->
	<div style="text-align: left; margin-left: 160px" >
		<p style="color: #333; font-size: 17px">${weibo.content }</p>
	</div>
	<!-- 图片 -->
	<div class="example" style="margin-left: 160px; margin-bottom: 20px;">
		<table>
			<tr>
				<c:if test="${weibo.pic1!=null }">
					<td><img src="/imgUpload/${weibo.pic1 }"
						style="width: 90px; height: 90px"></td>
				</c:if>
				<c:if test="${weibo.pic2!=null }">
					<td><img src="/imgUpload/${weibo.pic2 }"
						style="width: 90px; height: 90px"></td>
				</c:if>
				<c:if test="${weibo.pic3!=null }">
					<td><img src="/imgUpload/${weibo.pic3 }"
						style="width: 90px; height: 90px"></td>
				</c:if>
			</tr>
			<tr>
				<c:if test="${weibo.pic4!=null }">
					<td><img src="/imgUpload/${weibo.pic4 }"
						style="width: 90px; height: 90px"></td>
				</c:if>
				<c:if test="${weibo.pic5!=null }">
					<td><img src="/imgUpload/${weibo.pic5 }"
						style="width: 90px; height: 90px"></td>
				</c:if>
				<c:if test="${weibo.pic6!=null }">
					<td><img src="/imgUpload/${weibo.pic6 }"
						style="width: 90px; height: 90px"></td>
				</c:if>
			</tr>
			<tr>
				<c:if test="${weibo.pic7!=null }">
					<td><img src="/imgUpload/${weibo.pic7 }"
						style="width: 90px; height: 90px"></td>
				</c:if>
				<c:if test="${weibo.pic8!=null }">
					<td><img src="/imgUpload/${weibo.pic8 }"
						style="width: 90px; height: 90px"></td>
				</c:if>
				<c:if test="${weibo.pic9!=null }">
					<td><img src="/imgUpload/${weibo.pic9 }"
						style="width: 90px; height: 90px"></td>
				</c:if>
			</tr>
		</table>
	</div>
</div>
				</div>
			</c:forEach>
			<div class="container" style="width: 850px; background-color: #fff;">
			<!-- 分页 -->
			<div align="center" style="font-size: 20px">
				共${count}条转发消息|共${pageSize}页|
				<c:forEach var="i" begin="1" end="${pageSize}">
					<a
						href="../weibo/${wz}page=${i}"
						<c:if test="${curpage==i}">
			  style="color: red"
			</c:if>>
						${i} </a>
				</c:forEach>
			</div>
			</div>
	
		</div>
	</div>
	<script type="text/javascript">
	//转发微博
	function repost(id) {
		$('#Modal'+id).modal('toggle');
	}
	
	//跳至自己的主页
	function clickme() {
		window.location="queryMinePage.action";
	}

	//跳至userId的用户主页
	function clickother(userId) {
		var url = "queryUserPage.action?userId=" + userId;
		window.location=url;
	}
	
	//跳至所选微博页
	function clickWeibo(id) {
		var url = "singleWeibo.action?id=" + id;
		window.open(url);
	}
	
	function likes(id) {
		//未赞——>已赞
		var likeCount = $("#likeCount" + id).text();
		if($("#likespan"+id).hasClass("glyphicon-heart-empty")){
			$.get("${pageContext.request.contextPath }/like.action?id=" + id,null,function(data){
				$("#likespan"+id).attr("class","glyphicon glyphicon-heart");
				likeCount++;
				$("#likeCount" + id).text(likeCount);
			});
		}
		//已赞——>取消赞
		else {
			$.get("${pageContext.request.contextPath }/unlike.action?id=" + id,null,function(data){
				$("#likespan"+id).attr("class","glyphicon glyphicon-heart-empty");
				likeCount--;
				$("#likeCount" + id).text(likeCount);
			});
		}
	}

	function collect(id) {
		var text = $("#collect" + id).text();
		if(text == "收藏") {
			$.get("${pageContext.request.contextPath }/collect.action?id=" + id,null,function(data){
				$("#collect" + id).text("已收藏");
			});
		} 
		if(text == "已收藏"){
			$.get("${pageContext.request.contextPath }/uncollect.action?id=" + id,null,function(data){
				$("#collect" + id).text("收藏");
			});
		}
		
	}

	</script>

	<script type="text/javascript "	src="${pageContext.request.contextPath }/js/jquery-3.3.1.js "></script>
	<script type="text/javascript "	src="${pageContext.request.contextPath }/js/bootstrap.js "></script>
	<script type="text/javascript "	src="${pageContext.request.contextPath }/js/bootstrap-datetimepicker.js "></script>
	<script type="text/javascript "	src="${pageContext.request.contextPath }/js/bootstrap-datetimepicker.zh-CN.js "></script>
	<script type="text/javascript "	src="${pageContext.request.contextPath }/js/date.js "></script>
	<script type="text/javascript " src="${pageContext.request.contextPath }/js/jquery.flexText.js "></script>
	<script type="text/javascript " src="${pageContext.request.contextPath }/js/comment.js"></script>
	<script type="text/javascript " src="${pageContext.request.contextPath }/js/zoomify.js"></script>
	<script type="text/javascript">
		$('.example img').zoomify();
		
		// 长轮询
		$.ajax(getNotice);
	</script>
</body>

</html>