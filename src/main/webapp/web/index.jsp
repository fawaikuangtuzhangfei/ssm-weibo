<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=0.5, maximum-scale=2.0, user-scalable=yes" />     
<meta name="apple-mobile-web-app-capable" content="yes" />    
<meta name="format-detection" content="telephone=no" />    
<title>微博发布新鲜事</title>

<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/style.css">

</head>
<body><script src="/demos/googlegg.js"></script>
<nav class="navbar  navbar-fixed-top" role="navigation" style="background: #e0620d ;padding-top: 3px;height:50px;">
	<div class="container-fluid" style="background: #fff;"> 
		<div class="navbar-header ">
			<span class="navbar-brand " href="#">WEIBO</span>

			<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#my-navbar-collapse">
				<span class="sr-only">切换导航</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
		</div>
		 <form class="navbar-form navbar-left" role="search">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="#热门话题#">
				<i class="glyphicon glyphicon-search btn_search" ></i>
			   <!--  <button type="submit" class="btn btn-default">提交</button> -->
			</div>
			
		</form>
		
	  <div class="collapse navbar-collapse" id="my-navbar-collapse">
	   
		<ul class="nav navbar-nav navbar-right" >
			<li ><a href="#"><i class="glyphicon glyphicon-user"></i>&nbsp;&nbsp;Jack.C</a></li>
			 
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">
					设置 <b class="caret"></b>
				</a>
				<ul class="dropdown-menu">
					<li><a href="#">登录</a></li>
					<li><a href="#">注册</a></li>
   
				</ul>
			</li>
		</ul>
		
	  </div>

 
	</div>
 <hr style="margin: 0;padding: 0;color:#222;width: 100%">
</nav>

<div class="container container_bg" >
	<div class="row">
		<div class="col-sm-2"></div>

		<div class="col-sm-6 col-xs-12 my_edit" >
			<div class="row" id="edit_form" >
				<span class="pull-left" style="margin:15px;">编写新鲜事</span>
				<span class="tips pull-right" style="margin:15px;"></span>
				
				<form role="form" style="margin-top: 50px;" action="../weibo/post.do" method="post">
					  <div class="form-group">
						   <div class="col-sm-12">
					
								<div contentEditable="true" id="content"   class="form-control " >
									当前用户:<input name="userId" type="text">
									内容：<input name="content" type="text"/>  
    								图1：<input name="pic1" type="file"/>  
								</div>  
								
							</div>
							<div class="col-sm-12" style="margin-top: 12px;">
								<span class="emoji" >表情</span>

								<span class="pic" >图片	</span>
								<span>
									<input type="file" name=""  class="select_Img" style="display: none" >
									<img class="preview" src="">
								</span>
								

								<div class="myEmoji" >
									<ul id="myTab" class="nav nav-tabs">
										<li class="active">
											<a href="#set" data-toggle="tab">
											   预设
											</a>
										</li>
										<li><a href="#hot" data-toggle="tab">热门</a></li>
										
									</ul>
									<div id="myTabContent" class="tab-content">
										<div class="tab-pane fade in active" id="set">
											<div class="emoji_1"></div>

										</div>
										<div class="tab-pane fade" id="hot">
										  <div class="emoji_2"></div>
										</div>
									   
									</div>
								</div>
								<!-- <span> <input type="file" id="selectImg" value=""></input> </span> -->
								<button type="submit" id="send" class="btn btn-default pull-right disabled">发布</button>
							</div>
					  </div>
				</form> 
			</div>
			

			<div class="row item_msg" >
				<div class="col-sm-12 col-xs-12 message" >
					 <img src="img/icon.png" class="col-sm-2 col-xs-2" style="border-radius: 50%">
					 <div class="col-sm-10 col-xs-10">
						<span style="font-weight: bold;">Jack.C</span>
						<br>
						<small class="date" style="color:#999">1分钟前</small>
						<div class="msg_content">happy day!
						 <img class="mypic" src="img/bg_1.jpg" >
						 </div>
					
					 </div>
					 
				</div>
			   
				
			</div>


		</div>


		<div class="col-sm-3 col-xs-12 part_right" >
			<div class="row text-center inform">
				<img src="img/icon.png" >
				<h4 style="font-weight: bold;">Jack.C</h4>
				<div class="col-sm-12 my_inform" >
					<div class="col-sm-4 col-xs-4">
						<div>111</div>
						<div class="sort">关注</div>

					</div>
					<div class="col-sm-4 col-xs-4">
						<div>111</div>
						<div class="sort">粉丝</div>
					</div>
					<div class="col-sm-4 col-xs-4">
						<div>111</div>
						<div class="sort">博客</div>
					</div>
				</div>
			</div>  
			<div class="row part_hot" >
				<div class="col-sm-12">
					<span class="pull-left" style="padding: 10px;font-size:16px;font-weight: bold;">热门话题</span>
					<span class="pull-right" style="padding: 10px;">换话题</span>
				</div>
				<hr style="margin: 0;padding: 0;width: 100%">

				<div class="col-sm-12 item_hot" >
					<span class="pull-left">#英雄联盟s7#</span>
					<span class="pull-right item_num">34.6亿</span>
				</div>

				<div class="col-sm-12 item_hot" >
					<span class="pull-left">#今天霜降#</span>
					<span class="pull-right item_num">2.6亿</span>
				</div>

				<div class="col-sm-12 item_hot" >
					<span class="pull-left">#亚洲新歌榜#</span>
					<span class="pull-right item_num">10.4亿</span>
				</div>

				<div class="col-sm-12 item_hot" >
					<span class="pull-left">#扑通扑通少女心#</span>
					<span class="pull-right item_num">1.5亿</span>
				</div>

				<div class="col-sm-12 item_hot" >
					<span class="pull-left">#突然开心#</span>
					<span class="pull-right item_num">1.1亿</span>
				</div>
				<hr style="margin: 0;padding: 0;width: 100%">

				<div class="col-sm-12 text-center" style="padding: 10px"><a href="#">查看更多</a></div>

			</div>
		   
		</div>
	</div>
	
	
</div>
<script src="../js/jquery-3.1.0.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function(){

		 $("#content").keyup(function(){

			//判断输入的字符串长度
			var content_len = $("#content").text().replace(/\s/g,"").length;

			$(".tips").text("已经输入"+content_len+"个字");
			
	   
			if(content_len==0){
				// alert(content);
				$(".tips").text("");
				$("#send").addClass("disabled");
				return false;
			}else{
				$("#send").removeClass("disabled");
			}
		 });

		 
			$(".pic").click(function(){
				
				$(".select_Img").click();  	
				

			})

		// 	function confirm(){
			
		// 		var r= new FileReader();
					// f=$(".select_Img").files[0];
					// r.readAsDataURL(f);
					// r.onload=function(e) {
					// 	$(".preview").src=this.result;

					// };
		// 	}
		

		  //添加表情包1
		  for (var i = 1; i < 60; i++) {

				$(".emoji_1").append("<img src='img/f"+i+".png' style='width:35px;height:35px' >");
			}
			//添加表情包2
			for (var i = 1; i < 61; i++) {

				$(".emoji_2").append("<img src='img/h"+i+".png' style='width:35px;height:35px' >");
			}
		
		
		 $(".emoji").click(function(){

			$(".myEmoji").show();

			//点击空白处隐藏弹出层
			$(document).click(function (e) {

				if (!$("#edit_form").is(e.target) && $("#edit_form").has(e.target).length === 0) {

					$(".myEmoji").hide();
				}
			});


		 });

		 //将表情添加到输入框
		   $(".myEmoji img").each(function(){
				$(this).click(function(){
					var url = $(this)[0].src;

					$('#content').append("<img src='"+url+"' style='width:25px;height:25px' >");

					$("#send").removeClass("disabled");
				})
		   })
			
			//放大或缩小预览图片
			$(".mypic").click(function(){
				var oWidth=$(this).width(); //取得图片的实际宽度  
				var oHeight=$(this).height(); //取得图片的实际高度  
			  
				if($(this).height()!=200){
					$(this).height(200); 
				}else{
					$(this).height(oHeight + 200/oWidth*oHeight); 
					
				}
							
			})
			
	})
</script>

<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
<p>适用浏览器：360、FireFox、Chrome、Safari、Opera、傲游、搜狗、世界之窗. 不支持IE8及以下浏览器。</p>
<p>来源：<a href="http://www.lanrenzhijia.com/" target="_blank">懒人素材</a></p>
</div>
</body>
</html>