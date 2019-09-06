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
	<script src="../js/jquery-3.1.1.min.js"></script>

	<!-- Bootstrap -->
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../css/login.css">


<link rel="stylesheet" href="../css/regist.css">
</head>
<body>

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <p class="navbar-text navbar-right"><a href="#" class="navbar-link">实时</a></p>
    <p class="navbar-text navbar-right"><a href="#" class="navbar-link">首页</a></p>
    <p class="navbar-text navbar-right"><a href="#" class="navbar-link">好友圈</a></p>
  </div>
</nav>

<div>
	<form id="form-fabu" action="" method="post">
		当前用户:<input name="userId" type="text">
		内容：<input name="content" type="text"/>  
    	图1：<input name="pic1" type="file"/>  
    	<button type="button" id="fabu" value="提交">提交</button>
	</form>
	
	<div class="container" style="width: 850px; background-color: #fff;">
	<c:forEach items="${all}" var="weibo" varStatus="">    
				<!-- 文字 -->
				<div style="text-align: left; margin-left: 85px">
					<p style="color: #333; font-size: 17px">${weibo.content }</p>
				</div>
				<!-- 原创微博 -->
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
					</c:forEach>
			</div>
	

</div>

<div>
	
</div>

<script>
$('#fabu').click(function(){
    	$.ajax({
    		url:"../weibo/post.do",
    		//serialize()表示提交表单所有组件
    		data:$("#form-fabu").serialize(),
    		type:"post",
    		dataType:"json",
    		success:function(obj){
    			location="../weibo/show.do";
    		}
    	});
    
  })
 
</script>

</body>
</html>