<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<script type="text/javascript">
	// 查找微博
	function search_weibo() {
		var keyWord = $("#searchText").val();
		var url = "${pageContext.request.contextPath }/serch/selectByContents.do?pageNo=1&content="
				+ keyWord;
		if (keyWord == "") {
			alert("请输入要查找的东西");
		} else {
			window.location = url;
		}
	}

	// 查找用户
	function search_people() {
		var keyWord = $("#searchText").val();
		var url = "${pageContext.request.contextPath }/serch/showOne.do?username="
				+ keyWord;
		if (keyWord == "") {
			alert("请输入要查找的用户名");
		} else {
			window.location = url;
		}
	}

</script>

<!-- 导航栏 -->
<nav class="navbar navbar-fixed-top" role="navigation"
	style="background-color: #f5f5f5eb;">
	<div class="container-fluid">
		<div>
			<ul class="nav navbar-nav navbar-left">
				<li><a href="../weibo/show.do">实时微博</a></li>
				<li><a href="../weibo/showOne.do">我的首页</a></li>
				<li><a href="../relation/showMyFriends.do">好友圈</a></li>
				<!-- 用户信息 -->
				<input type="hidden" value="${user.username }" id="username">
				<input type="hidden" value="${user.nickname }" id="nickname">
				<input type="hidden" value="${user}">
				<li><input required="required" id="searchText" type="text"
					style="margin-top: 8px;" class="form-control" placeholder="搜索"></li>
				<li><button style="margin-top: 8px; margin-left: 5px;"
						onclick="search_people();" class="form-control btn btn-info">找人</button></li>
				<li><button style="margin-top: 8px; margin-left: 10px;"
						onclick="search_weibo();" class="form-control btn btn-info">找微博</button></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a id="notice" href="#"
					class="dropdown-toggle" data-toggle="dropdown" role="button"
					aria-haspopup="true" aria-expanded="false"> <span
						class="glyphicon glyphicon-comment"></span> 通知 <span id="badge"
						class="badge" style="display: none; background-color: red"></span>
				</a>
					<ul class="dropdown-menu">
						<li><a href="#">转发<span
								id="repost_badge" class="badge"
								style="display: none; background-color: red"></span></a></li>
						<li><a href="#">评论<span
								id="comment_badge" class="badge"
								style="display: none; background-color: red"></span></a></li>
						<li><a href="#">回复<span
								id="reply_badge" class="badge"
								style="display: none; background-color: red"></span></a></li>
						<li><a href="#">赞<span
								id="like_badge" class="badge"
								style="display: none; background-color: red"></span></a></li>
						<li><a href="# }">新的粉丝<span
								id="fans_badge" class="badge"
								style="display: none; background-color: red"></span></a></li>
					</ul></li>
				<li><a href="../user/showOne.do?userId=${user.id }"> <span
						class="glyphicon glyphicon-user"></span> ${user.username }
				</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false"> <span class="glyphicon glyphicon-cog"></span>设置
						<span class="caret"></span>
				</a>
					<ul class="dropdown-menu">
						<li><a href="../user/showUserinfo.do">修改个人信息</a></li>
						<li><a href="../user/showPassword.do">修改密码</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="../user/exit.do">登出</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
	<!-- 用户信息 -->
	<input type="hidden" value="${user.face }" id="face"> <input
		type="hidden" value="${user.username }" id="nickname"> <input
		type="hidden" value="${user.id}" id="userId">
	<div id="message"></div>
</nav>

<!-- 右侧个人简单信息 -->
		<div style="width: 20%; float: right; background-color: #fff;height: 220px;">
			<!-- 头像 -->
			<img src="/imgUpload/${user.face}" style="margin-top: 10px;"
				height="90px " width="90px" class="img-circle " align="center">
			<!-- 昵称 -->
			<br> <span style="font-size: 20px;">${user.username}&nbsp;&nbsp;</span>
			<br> <br>
			<table align="center" style="table-layout: fixed;">
				<tr>
					<td><a href="../weibo/showOne.do">${countWeibo }微博&nbsp;</a></td>
					<td><a href="../relation/showFollowList.do?userId=${user.id }">${followCount }关注&nbsp;</a></td>
					<td><a href="#">${fanCount }粉丝</td>
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



<!-- 左侧导航栏 -->
		<div style="width: 8%; float: left; margin-right: 10px; background-color: #fff;">
			<ul class="nav navbar-left nav-pills nav-stacked">
				<li style="width: 100%" ><a href="../weibo/showOne.do">我的首页</a></li>
				<li style="width: 100%"><a href="../relation/showMyFriends.do">好友圈</a></li>
				<li style="width: 100%"><a href="../like/showMyLike.do">我的赞</a></li>
				<li style="width: 100%"><a href="../collect/showMyCollect.do">我的收藏</a></li>
			</ul>
		</div>