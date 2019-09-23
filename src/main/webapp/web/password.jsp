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
    <title>修改密码</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="../js/jquery-1.12.0.min.js"></script>
<script src="../js/bootstrap.min.js"></script>

<script type="text/javascript " src="../js/comment.js"></script>
<script type="text/javascript " src="../js/jquery.flexText.js "></script>

<!-- 长轮询 -->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/longPolling.js "></script>

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

<!-- 百度下载插件 -->
<link rel="stylesheet" type="text/css" href="../css/webuploader.css">
<script type="text/javascript" src="../js/webuploader.js"></script>
<script type="text/javascript" src="../js/upload.js"></script>

<!-- zoomify图片放大缩小的插件 -->
<link rel="stylesheet" type="text/css" href="../css/zoomify.min.css">
<script type="text/javascript " src="../js/zoomify.js"></script>

<!-- 导航栏 -->
<jsp:include page="../web/navNoLR.jsp"></jsp:include>
</head>
<body style="padding: 80px">
    <br>
    <h1 class="cover-heading" style="margin-left: -80px">——修改密码——</h1>
    <br>
    <br>
    <br>
    <div class="cover-container" style="margin-left: 160x;">
        <form id="form-password" class="form-horizontal" action="" method="post">
            <span id="error_username" style="color: #ff5b5b; font-size: 17px">${error_new }</span>
            <div class="form-group">
                <label for="oldpw" class="col-sm-4 control-label">原密码</label>
                <div class="col-sm-5">
                    <input name="oldpw" id="oldpw" type="password" class="form-control" minlength="6" maxlength="12"
			        placeholder="请输入原密码" required style="width: 68%">
                    
                    <span class="msg-default hidden">密码长度在6到12位之间</span>
                </div>
            </div>
            <br>
            
            <div class="form-group">
		        <label for="newpw1" class="col-sm-4 control-label">新密码:</label>
		        <div class="col-sm-5">
			        <input type="password" name="newpw1" id="newpw1" class="form-control" minlength="6" maxlength="12"
			        placeholder="请输入新密码" required style="width: 68%">
		        
		        <span class="msg-default hidden">密码长度在6到12位之间</span>
		        </div>
        	</div>
        	<br>
        
	        <div class="form-group">
	        
	        	<label for="newpw2" class="col-sm-4 control-label">再次输入新密码:</label>
	        	<div class="col-sm-5">
		       		<input type="password" name="newpw2" id="newpw2" class="form-control" minlength="6" maxlength="12"
		       	 	placeholder="再次输入密码" required style="width: 68%">
	        	<span id="error_new" class="msg-default hidden">密码长度在6到12位之间</span>
	        	</div>
	        </div>
            <br>
            <br>
            <div class="form-group">
                <div class="col-sm-offset-4 col-sm-2">
                    <button id="bt-password" type="button" class="btn btn-lg btn-success" style="padding: 10px 55px;">确认更改</button>
                </div>
            </div>
        </form>
    </div>
    <script type="text/javascript">
    $('#bt-password').click(function(){
        var lengths=0;
        $('.form-group').each(function(){
          if($(this).find('span').hasClass('msg-success')){
            lengths++;
          }
        });
        if(lengths==3){
        	$.ajax({
        		url:"../user/updatePassword.do",
        		//serialize()表示提交表单所有组件
        		data:$("#form-password").serialize(),
        		type:"post",
        		dataType:"json",
        		success:function(obj){
        			if(obj.state==1){
        				location="../user/showLogin.do";
        			}else{
        				alert("原密码错误!")
        				location="../user/showPassword.do";
        			}
        		}
        	});
        }
        
      })
    
    
    
    function check_password(){
    	var pw1 = $("#newpw1").val();
    	var pw2 = $("#newpw2").val();
    	if(pw1 != pw2){
    		$("#error_new").text("两次输入的新密码不一致");
    		$("#error_new").removeClass().addClass("msg-error");
    	}
    }
    </script>
    <script>
    oldpw.onfocus = function(){
        this.nextElementSibling.innerHTML = '密码长度在6到12位之间';
        this.nextElementSibling.className = 'msg-default';
      }
    oldpw.onblur = function(){
        if(this.validity.valueMissing){
          this.nextElementSibling.innerHTML = '密码不能为空';
          this.nextElementSibling.className = 'msg-error';
          this.setCustomValidity('密码不能为空');
        }else if(this.validity.tooShort){
          this.nextElementSibling.innerHTML = '密码长度在尽量别少于6位';
          this.nextElementSibling.className = 'msg-error';
          this.setCustomValidity('密码长度在尽量别少于6位');
        }else {
          this.nextElementSibling.innerHTML = '密码格式正确';
          this.nextElementSibling.className = 'msg-success';
          this.setCustomValidity('');
        }
      }
    
    
    newpw1.onfocus = function(){
        this.nextElementSibling.innerHTML = '密码长度在6到12位之间';
        this.nextElementSibling.className = 'msg-default';
      }
      newpw1.onblur = function(){
        if(this.validity.valueMissing){
          this.nextElementSibling.innerHTML = '密码不能为空';
          this.nextElementSibling.className = 'msg-error';
          this.setCustomValidity('密码不能为空');
        }else if(this.validity.tooShort){
          this.nextElementSibling.innerHTML = '密码长度在尽量别少于6位';
          this.nextElementSibling.className = 'msg-error';
          this.setCustomValidity('密码长度在尽量别少于6位');
        }else {
          this.nextElementSibling.innerHTML = '密码格式正确';
          this.nextElementSibling.className = 'msg-success';
          this.setCustomValidity('');
        }
      }
      

      newpw2.onfocus = function(){
        this.nextElementSibling.innerHTML = '密码长度在6到12位之间';
        this.nextElementSibling.className = 'msg-default';
      }
      newpw2.onblur = function(){
        if(this.validity.valueMissing){
          this.nextElementSibling.innerHTML = '密码不能为空';
          this.nextElementSibling.className = 'msg-error';
          this.setCustomValidity('密码不能为空');
        }else if(this.validity.tooShort){
          this.nextElementSibling.innerHTML = '密码长度必须大于6位';
          this.nextElementSibling.className = 'msg-error';
          this.setCustomValidity('密码长度必须大于6位');
        }else {
          this.nextElementSibling.innerHTML = '密码格式正确';
          this.nextElementSibling.className = 'msg-success';
          this.setCustomValidity('');
        }
        check_password();
      }
      
		// 长轮询
		$.ajax(getNotice);
    </script>
</body>

</html>