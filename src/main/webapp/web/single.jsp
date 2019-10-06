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
<link rel="icon" href="../icons/sina_weibo.ico">
<title>微博详情</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/bootstrap-datetimepicker.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/login.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/mine.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/comment.css">
<!-- 导航栏 -->
<jsp:include page="../web/navNoLR.jsp"></jsp:include>

    <!-- 背景图片 -->
    <style>
    .bgImg {
    	background-image: url("../images/like.jpg");
		background-repeat: no-repeat;
		background-size: cover;
	}
    </style>
    
</head>
<body style="padding: 80px;" class="bgImg">

	<!-- 头部 -->
	<div id=${weibo.id }>

		<div class="container" style="width: 850px; background-color: white;">
			<!-- 头像 -->
			<div style="height: 50px; width: 50px; margin: 10px; float: left;">
				<img src="/imgUpload/${weibo.face}" width="50px" height="50px"
					class="img-circle">
			</div>
			<!-- 昵称+日期 -->
			<div
				style="text-align: left; margin: 10px; margin-left: 20px; float: left;">
				<a style="color: #333; font-size: 20px" href="#">${weibo.username }</a>
				<br> <a style="color: #333" href="#">${weibo.postTime }</a>
			</div>
			<!-- 删除操作按钮 -->
			<div class="btn-group" style="float: right; margin: 10px">
				<button type="button" class="btn btn-xs btn-Info data-toggle"
					data-toggle="dropdown">
					<span class="caret"></span>
				</button>
				<ul class="dropdown-menu" role="menu">
					<li><a style="font-size: 10px"
						href="../weibo/delWeibo.do?id=${weibo.id }">删除</a></li>
				</ul>
			</div>
		</div>
		<!-- 内容 -->
		<div class="container" style="width: 850px; background-color: #fff;">
			<!-- 文字 -->
			<div style="text-align: left; margin-left: 85px">
				<p style="color: #333; font-size: 17px">${weibo.content }</p>
			</div>
			<!-- 图片 -->
			<div style="margin-left: 85px;">
				<table>
					<tr>
						<c:if test="${weibo.pic1!=null }">
							<td><img src="/imgUpload/${weibo.pic1 }"
								style="width: 130px; height: 130px"></td>
						</c:if>
						<c:if test="${weibo.pic2!=null }">
							<td><img src="/imgUpload/${weibo.pic2 }"
								style="width: 130px; height: 130px"></td>
						</c:if>
						<c:if test="${weibo.pic3!=null }">
							<td><img src="/imgUpload/${weibo.pic3 }"
								style="width: 130px; height: 130px"></td>
						</c:if>
					</tr>
					<tr>
						<c:if test="${weibo.pic4!=null }">
							<td><img src="/imgUpload/${weibo.pic4 }"
								style="width: 130px; height: 130px"></td>
						</c:if>
						<c:if test="${weibo.pic5!=null }">
							<td><img src="/imgUpload/${weibo.pic5 }"
								style="width: 130px; height: 130px"></td>
						</c:if>
						<c:if test="${weibo.pic6!=null }">
							<td><img src="/imgUpload/${weibo.pic6 }"
								style="width: 130px; height: 130px"></td>
						</c:if>
					</tr>
					<tr>
						<c:if test="${weibo.pic7!=null }">
							<td><img src="/imgUpload/${weibo.pic7 }"
								style="width: 130px; height: 130px"></td>
						</c:if>
						<c:if test="${weibo.pic8!=null }">
							<td><img src="/imgUpload/${weibo.pic8 }"
								style="width: 130px; height: 130px"></td>
						</c:if>
						<c:if test="${weibo.pic9!=null }">
							<td><img src="/imgUpload/${weibo.pic9 }"
								style="width: 130px; height: 130px"></td>
						</c:if>
					</tr>
				</table>
			</div>
		</div>
		<!-- 非原创 转发微博 -->
			<c:if test="${weibo.original == 0 }">
				<!-- 头部 -->
				<div class="container"
					style="width: 850px; background-color: #eaeaec;">
					<!-- 头像 -->
					<div
						style="cursor: pointer; height: 30px; width: 30px; margin: 10px; float: left; margin-left: 100px;">
						<a href="../user/showOne.do?userId=${weibo.repost.id }" 
					class="bind_hover_card popover-show" data-toggle="popover"  
					title="${weibo.repost.username }" 
					data-content=
					"<form><ul><li><span aria-hidden='true' class='icon_globe'></span> <font>粉丝数:</font>7389223</li> 
     						<li><span aria-hidden='true' class='icon_piechart'></span> <font>关注:</font>265</li>
    						 <li><span aria-hidden='true' class='icon_search_alt'></span> <font>微博:</font>645</li>
     						<li><span aria-hidden='true' class='icon_pens_alt'></span> <font>所在地:</font>${weibo.repost.nowProvince}</li>
     						<input type='button' value='关注' id='guanzhu${weibo.repost.userId }' onclick='guanzhuOther(${weibo.repost.userId })'/></form>"
					data-placement="bottom" data-trigger="hover">
						
						<img
							src="/imgUpload/${weibo.repost.face}" width="40px"
							height="40px" class="img-circle">
						</a>
					</div>
					<!-- 昵称+日期 -->
					<div
						style="text-align: left; margin: 10px; margin-left: 20px; float: left;">
						<input type="hidden" class="followId" value="${weibo.repost.id }">
						<a style="color: #333; font-size: 14px" href="../user/showOne.do?userId=${weibo.repost.id }">
						${weibo.repost.username }</a><br>
						<span style="color: #333; font-size: 10px">${weibo.repost.postTime }</span>
					</div>
				</div>
				<div class="container"
					style="width: 850px; background-color: #eaeaec;">
					<!-- 文字 -->
					<div style="text-align: left; margin-left: 160px">
						<p style="color: #333; font-size: 17px">${weibo.repost.content }</p>
					</div>
					<!-- 图片 -->
					<div class="example" style="margin-left: 160px;margin-bottom: 20px;">
						<table>
							<tr>
								<c:if test="${weibo.repost.pic1!=null }">
									<td><img src="/imgUpload/${weibo.repost.pic1 }"
										style="width: 90px; height: 90px"></td>
								</c:if>
								<c:if test="${weibo.repost.pic2!=null }">
									<td><img src="/imgUpload/${weibo.repost.pic2 }"
										style="width: 90px; height: 90px"></td>
								</c:if>
								<c:if test="${weibo.repost.pic3!=null }">
									<td><img src="/imgUpload/${weibo.repost.pic3 }"
										style="width: 90px; height: 90px"></td>
								</c:if>
							</tr>
							<tr>
								<c:if test="${weibo.repost.pic4!=null }">
									<td><img src="/imgUpload/${weibo.repost.pic4 }"
										style="width: 90px; height: 90px"></td>
								</c:if>
								<c:if test="${weibo.repost.pic5!=null }">
									<td><img src="/imgUpload/${weibo.repost.pic5 }"
										style="width: 90px; height: 90px"></td>
								</c:if>
								<c:if test="${weibo.repost.pic6!=null }">
									<td><img src="/imgUpload/${weibo.repost.pic6 }"
										style="width: 90px; height: 90px"></td>
								</c:if>
							</tr>
							<tr>
								<c:if test="${weibo.repost.pic7!=null }">
									<td><img src="/imgUpload/${weibo.repost.pic7 }"
										style="width: 90px; height: 90px"></td>
								</c:if>
								<c:if test="${weibo.repost.pic8!=null }">
									<td><img src="/imgUpload/${weibo.repost.pic8 }"
										style="width: 90px; height: 90px"></td>
								</c:if>
								<c:if test="${weibo.repost.pic9!=null }">
									<td><img src="/imgUpload/${weibo.repost.pic9 }"
										style="width: 90px; height: 90px"></td>
								</c:if>
							</tr>
						</table>
					</div>
				</div>
			</c:if>
		</div>
		<!-- 底部 -->
		<div class="container" style="width: 850px; background-color: #fff; padding-left: 0px;">
			<br>
			<div class="btn-group" style="width: 850px">
				<button type="button" id="shoucang${weibo.id}"
					onclick="collect(${weibo.id})" style="width: 25%"
					class="btn btn-success">收藏</button>
				<!-- Button trigger modal -->
				<button type="button" class="btn btn-primary " data-toggle="modal"
					data-target="#myModal" style="width: 25%" data-id="${weibo.id }">转发</button>
				<button onclick="loadComment(${weibo.id})" style="width: 25%"
					class="btn btn-warning comment" id="bt${status.index }">评论</button>
				<button type="button" id="dianzan${weibo.id}" style="width: 25%" 
				onclick="like(${weibo.id})" class="btn btn-danger">点赞</button>
			</div>
			<br> <br>
		</div>
		<!--
    此评论textarea文本框部分使用的https://github.com/alexdunphy/flexText此插件
    -->
		<div class="container" style="width: 850px; background-color: #fff;">
			<div class="commentAll" id="comment_1" style="display: block;">
				<!--评论区域 begin-->
				<div class="reviewArea clearfix ">
							<form id="form-pinglun${weibo.id}">
								<input type="hidden" value="${user.id}" name="userId"> 
								<input type="hidden" value="${weibo.id}" name="weiboId">
								<textarea class="content comment-input " id="pinglunContent"
									placeholder="等待输入......." onkeyup="keyUP(this) "
									name="commentContent"></textarea>
								<a href="javascript:; " class="plBtn pinglun" id="pinglun">评论</a>
								<!-- 微博id -->
								<input type="hidden" id="weiboId" value="${weibo.id}"
									class="weiboId">
							</form>
				</div>
				<!--评论区域 end-->
				<!--回复区域 begin-->
				<div class="comment-show">
					<c:forEach items="${commentList }" var="comment">
						<div class="comment-show-con clearfix">
							<div class="comment-show-con-img pull-left">
								<img class="img-circle" style="height: 50px; width: 50px;"
									src="/imgUpload/${comment.face }" alt="">
							</div>
							<div class="comment-show-con-list pull-left clearfix">
								<div class="pl-text clearfix">
									<a href="#" class="comment-size-name">${comment.username}</a>
									<input type="hidden" class="comment-size-userId"
										value="${comment.userId}"> <input type="hidden"
										class="comment-size-commentId" value="${comment.commentId}">
									<span class="my-pl-con">&nbsp;${comment.commentContent }</span>
								</div>
								<div class="date-dz">
									<span class="date-dz-left pull-left comment-time">${comment.commentTime }</span>
									<div class="date-dz-right pull-right comment-pl-block">
										<c:if test="${user.id == comment.userId}">
											<a href="javascript:deleteComment(${comment.commentId});"
												class="removeBlock" style="color: #333">删除</a>
										</c:if>
										<a href="javascript:;"
											class="date-dz-pl pl-hf hf-con-block pull-left">回复</a> <span
											class="pull-left date-dz-line">|</span> <a
											href="javascript:;" class="date-dz-z pull-left"> <i
											class="date-dz-z-click-red"></i>赞(<i class="z-num">666</i>)
										</a>
									</div>
								</div>
								<!-- 回复列表 -->
								<div class="hf-list-con">
									<c:forEach items="${comment.reply}" var="reply">
										<div class="all-pl-con">
											<div class="pl-text hfpl-text clearfix">
												<!-- 来自 -->
												<a href="#" class="comment-size-name">${reply.fromUsername }</a> <span
													style="color: #987">回复</span>
												<!-- 回复@ -->
												<a href="#" class="comment-size-name">@${reply.toUsername }:&nbsp</a>
												<input type="hidden" class="comment-size-userId"
													value="${reply.fromId}"> <input type="hidden"
													class="comment-size-commentId" value="${reply.commentId}">
												<!-- 内容 -->
												<span class="my-pl-con">${reply.replyContent }</span>
											</div>
											<div class="date-dz">
												<!-- 时间 -->
												<span class="date-dz-left pull-left comment-time">${reply.time}</span>
												<div class="date-dz-right pull-right comment-pl-block">
													<c:if test="${user.id == reply.fromId}">
														<a href="javascript:deleteReply(${reply.replyId})"
															class="removeBlock">删除</a>
													</c:if>
													<a href="javascript:;"
														class="date-dz-pl pl-hf hf-con-block pull-left">回复</a> <span
														class="pull-left date-dz-line">|</span> <a
														href="javascript:;" class="date-dz-z pull-left"> <i
														class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)
													</a>
												</div>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
				<!--回复区域 end-->
			</div>
		</div>
		<hr>
	</div>

	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/jquery-3.3.1.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/bootstrap-datetimepicker.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/bootstrap-datetimepicker.zh-CN.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/date.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/jquery-1.12.0.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/jquery.flexText.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/comment.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/longPolling.js "></script>

<!-- 页面加载时:查看是否已经被当前用户所收藏、点赞 -->
<script>

//页面加载
      $(document).ready(function () {
    	  var userId = $("#userId").val();
    	  var btns = new Array();
    	  $(".weiboId").each(function(i,n){
    		  //获取到所有的weiboId
    		  btns[i] = $(this).val();
    		  
    		//查询现状
    		  pdUserCollection(btns[i], userId);
    		  pdUserLikes(btns[i], userId);
    	  });
      });

</script>
		
<!-- 查看是否已经被当前用户所收藏、点赞 -->
<script>
//页面加载查询是不是已经关注、点赞
//点赞
function pdUserLikes(weiboId, userId) {
          $.ajax({
              type: "post",
              url: "../like/selectByOne.do",
              data: { "weiboId": weiboId, "userId": userId },
              dataType:"json",
              success:function (obj) {
                  if (obj.state==1) {
                	  $("#dianzan"+weiboId).attr("class","btn btn-danger glyphicon glyphicon-heart");
                      $("#dianzan"+ weiboId).text('取消点赞 ' + obj.data);
                  } else {
                	  $("#dianzan"+weiboId).attr("class","btn btn-danger glyphicon glyphicon-heart-empty");
                      $("#dianzan"+ weiboId).text('点赞 '+ obj.data);
                  }
              }
          })

      }
//收藏
function pdUserCollection(weiboId, userId) {
    $.ajax({
        type: "post",
        url: "../collect/selectByOne.do",
        data: { "weiboId": weiboId, "userId": userId },
        dataType:"json",
        success:function (obj) {
            if (obj.state==1) {
                $("#shoucang"+ weiboId).text('取消收藏');
            } else {
                $("#shoucang"+ weiboId).text('收藏');
            }
        }
    })

}
</script>

<!-- 收藏事件 点赞事件-->
<script>

//收藏-点击之后变为已收藏  已收藏-收藏
      function collect(weiboId) {
    	  var userId = $("#userId").val();
    	  if($("#shoucang"+ weiboId).text()=="收藏"){
    		  $.ajax({
                  type: "POST",
                  url: "../collect/collect.do",
                  data: { "weiboId": weiboId, "userId": userId },
                  dataType: "json",
                  success: function (obj) {
                	  if (obj.state==1) {
                          $("#shoucang"+ weiboId).text('取消收藏');
                      } 
                 }
              })
    	  }else{
    		  $.ajax({
                  type: "POST",
                  url: "../collect/decollect.do",
                  data: { "weiboId": weiboId, "userId": userId },
                  dataType: "json",
                  success: function (obj) {
                	  if (obj.state==1) {
                          $("#shoucang"+ weiboId).text('收藏');
                      } 
                 }
              })
    	  }
          
      }
      
    //点赞-点击之后变为已点赞  已点赞-点赞
      function like(weiboId) {
    	  var userId = $("#userId").val();
    	  if($("#dianzan"+weiboId).hasClass("glyphicon-heart")){
    		  $.ajax({
                  type: "POST",
                  url: "../like/delike.do",
                  data: { "weiboId": weiboId, "userId": userId },
                  dataType: "json",
                  success: function (obj) {
                	  if (obj.state==1) {
                		  $("#dianzan"+weiboId).attr("class","btn btn-danger glyphicon glyphicon-heart-empty");
                          $("#dianzan"+ weiboId).text('点赞 ' + obj.data);
                      } 
                 }
              })
    	  }else{
    		  $.ajax({
                  type: "POST",
                  url: "../like/like.do",
                  data: { "weiboId": weiboId, "userId": userId },
                  dataType: "json",
                  success: function (obj) {
                	  if (obj.state==1) {
                		  $("#dianzan"+weiboId).attr("class","btn btn-danger  glyphicon glyphicon-heart");
                          $("#dianzan"+ weiboId).text('取消点赞 ' + obj.data);
                      } 
                 }
              })
    	  }
          
      }
</script>

<!-- 评论相关 -->
<script>
//评论
$('.pinglun').click(function(){
	var id=$(this).parent().children("input")[2].value;
    	$.ajax({
    		url:"../weibo/postComment.do",
    		//serialize()表示提交表单所有组件
    		data:$("#form-pinglun" + id).serialize(),
    		type:"post",
    		dataType:"json",
    		success:function(obj){
    			window.location.reload();
    		}
    	});
  })

//删除评论、回复
$('.commentAll').on('click', '.removeBlock', function(e) {
	 var oT = $(this).parents('.date-dz-right').parents('.date-dz').parents('.all-pl-con');
	 if (oT.siblings('.all-pl-con').length >= 1) {
	     oT.remove();
	 } else {
	     $(this).parents('.date-dz-right').parents('.date-dz').parents('.all-pl-con').parents('.hf-list-con').css('display', 'none')
	     oT.remove();
	 }
	 $(this).parents('.date-dz-right').parents('.date-dz').parents('.comment-show-con-list').parents('.comment-show-con').remove();
})  
</script>

	<script type="text/javascript">
		//删除评论
		function deleteComment(commentId) {
			$.get("../weibo/removeById.do?weiboId=" + commentId, null, null);
		}

		//删除回复
		function deleteReply(replyId) {
			$.get("../reply/deleteReply.do?replyId="+ replyId, null, null);
		}

		//长轮询
		$.ajax(getNotice);
	</script>

</body>

</html>