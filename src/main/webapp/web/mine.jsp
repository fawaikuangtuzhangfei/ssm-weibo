<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>我的首页</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="../js/jquery-1.12.0.min.js"></script>
<script src="../js/bootstrap.min.js"></script>

<script type="text/javascript " src="../js/comment.js"></script>
<script type="text/javascript " src="../js/jquery.flexText.js "></script>

<!-- Bootstrap -->
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/login.css">

<link rel="stylesheet" href="../css/regist.css">
<link rel="stylesheet" type="text/css" href="../css/zoomify.min.css">
<link rel="stylesheet" type="text/css" href="../css/upload.css">

<!-- 百度下载插件 -->
<link rel="stylesheet" type="text/css" href="../css/webuploader.css">
<script type="text/javascript" src="../js/webuploader.js"></script>
<script type="text/javascript" src="../js/upload.js"></script>
</head>
<body>
<body style="padding: 80px">
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
<div style="width: 70%; float: left;">
<!-- 发送新微博 -->
			<div class="container" style=" margin-top: 20px; background-color: #fff;">
				<p style="font-size: 40px; color: black">分享新鲜事</p>
				<form method="post" action="../weibo/post.do">
					<textarea class="form-control" rows="4"
						style="border: 1px; resize: none; width: 100%; background-color: #eee"
						name="content"></textarea>
					<div id="uploader-demo">
						<div class="webuploader-container">
							<!--用来存放item-->
							<div id="fileList" class="uploader-list"></div>
							<div id="sendButtom">
								<div id="one" style="float: left; margin-left: 40%;">
									<div id="filePicker" class="webuploader-pick form-control">选择图片</div>
									<input type="file" name="file"
										class="webuploader-element-invisible" multiple="multiple"
										accept="image/*"> <label
										style="cursor: pointer; background: rgb(255, 255, 255);"></label>
								</div>
								<div id="two" style="float: left;">
									<button id="postWeibo" type="submit"
										class="form-control btn btn-success">发微博</button><br>
								</div>
							</div>
						</div>
					</div>
				</form>
				<br/>
<!-- 微博正文部分 -->
		<!-- 微博内容&转发微博内容 -->
			<c:forEach items="${all}" var="weibo" varStatus="">
			<!-- 头部 -->
			<div class="container" style="width: 850px; padding-top: 34px; background-color: white;">
				<!-- 头像 -->
				<div style="height: 50px; width: 50px; margin: 10px; float: left;">
					<img src="/imgUpload/${user.face}" width="50px" height="50px"
						class="img-circle">
				</div>
				<!-- 昵称+日期 -->
				<div
					style="text-align: left; margin: 10px; margin-left: 20px; float: left;">
					<a style="color: #333; font-size: 20px" href="#">${user.username }</a>
					<br> <span style="color: #333" >${weibo.postTime }</span>
				</div>
				<!-- 删除操作按钮 -->
				<div class="btn-group" style="float: right; margin: 10px">
					<button type="button" class="btn btn-xs btn-Info data-toggle"
						data-toggle="dropdown">
						<span class="caret"></span>
					</button>
					<ul class="dropdown-menu" role="menu">
						<li><a style="font-size: 10px"
							href="javascript:delWeibo(${weibo.id })">删除</a></li>
					</ul>
				</div>
			</div>
			<!-- 微博正文 -->
				<!-- 文字 -->
				<div style="text-align: left; margin-left: 85px;">
					<p style="color: #333; font-size: 17px">${weibo.content }</p>
				</div>
				<!-- 原创微博 -->
				<c:if test="${weibo.original == 1 }">
				<!-- 图片 -->
				<div class="example1" style="margin-left: 85px; margin-bottom: 20px;">
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
			</c:if>
			<!-- 非原创 转发微博 -->
			<c:if test="${weibo.original == 0 }">
				<!-- 头部 -->
				<div class="container"
					style="width: 850px; background-color: #eaeaec;">
					<!-- 头像 -->
					<!-- 昵称+日期 -->
					<div
						style="text-align: left; margin: 10px; margin-left: 20px; float: left;">
						<a style="color: #333; font-size: 14px" href="javascrip:;">${weibo.repost.username }</a><br>
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

				<!-- 底部 -->
				<div class="container" style="width: 850px; background-color: #fff;">
					<br>
					<div class="btn-group" style="width: 100%">
						<button type="button" id="shoucang${weibo.id}"
							onclick="collect(${weibo.id})" style="width: 25%"
							class="btn btn-success">收藏</button>
						<!-- Button trigger modal -->
						<button type="button" class="btn btn-primary " data-toggle="modal"
							data-target="#myModal" style="width: 25%" data-id="${weibo.id }">转发</button>
						<button onclick="loadComment(${weibo.id})" style="width: 25%"
							class="btn btn-warning" id="bt">评论</button>
						<button type="button" id="dianzan${weibo.id}" style="width: 25%" 
						onclick="like(${weibo.id})" class="btn btn-danger">点赞</button>
					</div>
					<br> <br>
				</div>

				<!-- 评论区 -->
				<div class="container "
					style="width: 850px; background-color: #fff;">
					<div class="commentAll " id="com${weibo.id}">
						<!--评论区域 begin-->
						<div class="reviewArea clearfix ">
							<form id="form-pinglun${weibo.id}">
								<input type="hidden" value="${user.id}" name="userId"> <input
									type="hidden" value="${weibo.id}" name="weiboId">
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
						<div class="comment-show " id="show${weibo.id }"></div>
						<!--回复区域 end-->
					</div>
					<hr>
				</div>


			</c:forEach>
			<!-- 实现分页 -->
			<!-- 分页 -->
			<div align="center" style="font-size: 20px">
				共${count}条微博|共${pageSize}页|
				<c:forEach var="i" begin="1" end="${pageSize}">
					<a
						href="../weibo/${wz}?page=${i}"
						<c:if test="${curpage==i}">
			  style="color: red"
			</c:if>>
						${i} </a>
				</c:forEach>
			</div>
		</div>


		<!-- bootstrap模态框（Modal） -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">转发微博</h4>
					</div>
					<div class="modal-body">
						<form id="form-zhuanfa">
							说点什么吧:<input type="text" class="form-inline" name="content"
								style="width: 500px"> <input name="userId" type="hidden"
								value="${user.id }"> 
								<input id="repostId" name="repostId" type="hidden" value=""> <br /> 
								<input name="original" type="hidden" value="0">
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<button type="button" id="zhuanfa" class="btn btn-primary">发布</button>
					</div>
				</div>
			</div>
		</div>
</div>

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

	<!-- 发布评论 -->
	<script>
//<!--textarea限制字数-->
function keyUP(t) {
 var len = $(t).val().length;
 if (len > 139) {
     $(t).val($(t).val().substring(0, 140));
 }
}
$('.pinglun').click(function(){
	var id=$(this).parent().children("input")[2].value;
    	$.ajax({
    		url:"../weibo/postComment.do",
    		//serialize()表示提交表单所有组件
    		data:$("#form-pinglun" + id).serialize(),
    		type:"post",
    		dataType:"json",
    		success:function(obj){
    			
    		}
    	});
    	window.location.href="../weibo/showOne.do";
  })
 
</script>

	<!-- 加载评论 -->
	<script>
function loadComment(weiboId){
    var commentAction = "../weibo/showComments.do?weiboId=" + weiboId;
    $.ajax({
        type: 'GET',
        url: commentAction,
        contentType: 'application/json;charset=utf-8',
        dataType: 'json',
        success:function(data) {
        	var result = data.data;
        	$('#show'+weiboId).html("");
        	for(var i in result){
        		var date1 = new Date(result[i].commentTime);
        		var com = '<div class="comment-show-con clearfix ">' +
                '<div class="comment-show-con-img pull-left ">' +
              	//时间
                '<span class="date-dz-left  comment-time ">'+ date1.toLocaleString() +'</span> <br>' +
              	//昵称
                '<a href="# " class="comment-size-name ">'+ result[i].userId +'</a>' +
                //内容
                '<span class="my-pl-con ">:&nbsp; '+ result[i].commentContent +'</span>' +
                '<div class="date-dz ">'+
                
                '<div class="date-dz-right pull-right comment-pl-block ">' +
                //回复
                '<a href="javascript:; " class="date-dz-pl pl-hf hf-con-block pull-left ">回复</a>' +
                '<span class="pull-left date-dz-line ">|</span>' +
                '<a href="javascript:; " class="date-dz-z pull-left ">' +
                //赞
                '<i class="date-dz-z-click-red "></i>赞 (<i class="z-num ">666</i>)</a>' +
                '<span class="pull-left date-dz-line ">|</span>' +
                //删除
                '<a href="javascript:;" class="removeBlock " id="'+ result[i].commentId +'">删除</a>' +
                '</div></div><div class="hf-list-con " style="text-align: left;" id="123'+ result[i].commentId +'"></div>';
        		$('#show'+weiboId).prepend(com);
        	}
            
		}
    });
    
}

</script>

	<script>
//删除当前行-评论
$(document).on('click','.removeBlock',function (e) {  
        var id=$(this).attr('id');
        var url ="../weibo/removeById.do?weiboId="+id;
		 window.location.href=url;
    });
</script>



	<!-- //转发微博 -->
	<script>
	$('#myModal').on('show.bs.modal', function (event) {      
		var btnThis = $(event.relatedTarget); //触发事件的按钮      
		var modal = $(this);  //当前模态框      
		var modalId = btnThis.data('id');   //解析出data-id的内容    
		modal.find('#repostId').val(modalId);         
	});
	
		$('#zhuanfa').click(function() {
			$.ajax({
				url : "../weibo/post.do",
				//serialize()表示提交表单所有组件
				data : $("#form-zhuanfa").serialize(),
				type : "post",
				dataType : "json",
				async: false,
				success : function(obj) {
					window.location.href = "../weibo/showOne.do";
				}
			});
			
		})
	</script>
	<!-- //发布微博 -->
	<script>
$('#fabu').click(function(){
    	$.ajax({
    		url:"../weibo/post.do",
    		//serialize()表示提交表单所有组件
    		data:$("#form-fabu").serialize(),
    		type:"post",
    		dataType:"json",
    		async: false,
    		success:function(obj){
    			
    		}
    	});
    	window.location.href="../weibo/showOne.do";
  })
 
</script>


</body>
</html>