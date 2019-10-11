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
<link rel="icon" href="../icons/sina_weibo.ico">
<script src="../js/jquery-1.12.0.min.js"></script>
<script src="../js/bootstrap.min.js"></script>

<script type="text/javascript " src="../js/comment.js"></script>
<script type="text/javascript " src="../js/jquery.flexText.js "></script>

<!-- Bootstrap -->
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/login.css">

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/login.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/comment.css">

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/mine.css">

<link rel="stylesheet" href="../css/regist.css">
<link rel="stylesheet" type="text/css" href="../css/zoomify.min.css">
<link rel="stylesheet" type="text/css" href="../css/upload.css">

<!-- 长轮询 -->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/longPolling.js "></script>

<!-- 百度下载插件 -->
<link rel="stylesheet" type="text/css" href="../css/webuploader.css">
<script type="text/javascript" src="../js/webuploader.js"></script>
<script type="text/javascript" src="../js/upload.js"></script>

<!-- zoomify图片放大缩小的插件 -->
<link rel="stylesheet" type="text/css" href="../css/zoomify.min.css">
<script type="text/javascript " src="../js/zoomify.js"></script>
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
	});
</script>
<!-- 导航栏 -->
<jsp:include page="../web/nav.jsp"></jsp:include>

    <!-- 背景图片 -->
    <style>
    .bgImg {
    	background-image: url("../images/myweibo.jpg");
		background-repeat: no-repeat;
		background-size: cover;
	}
    </style>
    
</head>

<body style="padding: 80px" class="bgImg">
	
	
	
		
<!-- 微博内容 -->
<div style="width: 70%; float: left;">
<!-- 发送新微博 -->
			<div class="container" style="width: auto; background-color: #fff;">
				<p style="font-size: 40px; color: black" align="center">分享新鲜事</p>
				<form method="post" action="../weibo/post.do">
					<textarea class="form-control" rows="4"
						style="border: 1px; resize: none; width: 100%; background-color: #eee"
						name="content"></textarea>
					<div id="uploader-demo">
						<div class="webuploader-container">
							<!--用来存放item-->
							<div id="fileList" class="uploader-list" style="width: 400px;"></div>
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
			<c:forEach items="${all}" var="weibo" varStatus="status">
			<!-- 头部 -->
			<div class="container" style="width: auto; padding-top: 34px; background-color: white;">
			<input type="hidden" class="followWeiboId" value="${weibo.userId }">
				<!-- 头像 -->
				<div style="height: 50px; width: 50px; margin: 10px; float: left;">
					<a href="../user/showOne.do?userId=${user.id }" 
					class="bind_hover_card popover-show" data-toggle="popover"  
					title="${weibo.username }" 
					data-content=
					"<form><ul><li><span aria-hidden='true' class='icon_globe'></span> <font>粉丝数:</font>${weibo.fans }</li> 
     <li><span aria-hidden='true' class='icon_piechart'></span> <font>关注:</font>${weibo.follows }</li>
     <li><span aria-hidden='true' class='icon_search_alt'></span> <font>微博:</font>${weibo.weibos}</li>
     <li><span aria-hidden='true' class='icon_pens_alt'></span> <font>所在地:</font>${weibo.nowProvince}</li>
     <input type='button' value='关注' id='guanzhu${weibo.userId }' onclick='guanzhu(${weibo.userId })'/></form>"
					data-placement="bottom" data-trigger="hover">
				
						<img src="/imgUpload/${user.face}" width="50px" height="50px"
						class="img-circle" >
					</a>
				</div>
				<!-- 昵称+日期 -->
				<div
					style="text-align: left; margin: 10px; margin-left: 20px; float: left;">
					<a style="color: #333; font-size: 20px" href="../user/showOne.do?userId=${user.id }">${user.username }</a>
					<br> <span style="color: #333" >${weibo.postTime }</span>
				</div>
				<c:if test="${weibo.userId == user.id }">
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
				</c:if>
			</div>
			<!-- 微博正文 -->
				<!-- 文字 -->
				<div class="container" style="text-align: left; margin-left: 85px; ">
					<p style="color: #333; font-size: 17px">${weibo.content }</p>
				</div>
				<!-- 原创微博 -->
				<c:if test="${weibo.original == 1 }">
				<!-- 图片 -->
				<div class="example" style="margin-left: 85px; margin-bottom: 20px;">
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
					style="width: auto; background-color: #eaeaec;">
					<!-- 头像 -->
					<div
						style="cursor: pointer; height: 30px; width: 30px; margin: 10px; float: left; margin-left: 100px;">
						<a href="../user/showOne.do?userId=${weibo.repost.userId }" 
					class="bind_hover_card popover-show" data-toggle="popover"  
					title="${weibo.repost.username }" 
					data-content=
					"<form><ul><li><span aria-hidden='true' class='icon_globe'></span> <font>粉丝数:</font>${weibo.repost.fans}</li> 
     						<li><span aria-hidden='true' class='icon_piechart'></span> <font>关注:</font>${weibo.repost.follows}</li>
    						 <li><span aria-hidden='true' class='icon_search_alt'></span> <font>微博:</font>${weibo.repost.weibos}</li>
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
						<input type="hidden" class="followId" value="${weibo.repost.userId }">
						<a style="color: #333; font-size: 14px" href="../user/showOne.do?userId=${weibo.repost.userId }">
						${weibo.repost.username }</a><br>
						<span style="color: #333; font-size: 10px">${weibo.repost.postTime }</span>
					</div>
				</div>
				<!-- 正文 -->
				<div class="container"
					style="width: auto; background-color: #eaeaec;">
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
				<div class="container" style="width: auto; background-color: #fff;">
					<br>
					<div class="btn-group" style="width: 100%">
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

				<!-- 评论区 -->
				<div class="container "
					style="width: auto; background-color: #fff;">
					<div class="commentAll " id="com${status.index }" style="display: none;">
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
						href="../weibo/${wz}page=${i}"
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

<!-- 关注的相关js -->
<script type="text/javascript " src="../js/follow.js"></script>
<!-- 评论相关的js -->
<script type="text/javascript " src="../js/comment.js"></script>

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
    
//页面加载查询是不是已经关注、点赞、收藏
//是否点赞
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
//是否收藏
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

	<!-- 关注事件 收藏事件 点赞事件 -->
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
    			loadComment(id);
    		}
    	});
  })
//删除评论
$('.commentAll').on('click', '.removeBlock', function(e) {
	var id=$(this).attr('id');
    var url ="../weibo/removeById.do?weiboId="+id;
    $.ajax({
		url : url,
		data : {"123":123},
		type : "post",
		async: true,
		success : function(obj) {
			
		}
	});
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
				url : "../weibo/repost.do",
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
<script type="text/javascript">
		$('.example img').zoomify();
		// 长轮询
		$.ajax(getNotice);
</script>

</html>