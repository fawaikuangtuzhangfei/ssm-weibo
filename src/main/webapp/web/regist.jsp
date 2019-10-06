<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="../icons/sina_weibo.ico">
	<script src="../js/jquery-3.1.1.min.js"></script>

	<!-- Bootstrap -->
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../css/login.css">


<link rel="stylesheet" href="../css/regist.css">
<title>新用户注册</title>

    <!-- 背景图片 -->
    <style>
    .bgImg {
    	background-image: url("../images/regist.jpg");
		background-repeat: no-repeat;
		background-size: cover;
	}
    </style>
</head>
<body class="bgImg" style="color: goldenrod">
	 <div class="container">

      <form id="form-register" class="form-signin" method="post" action="">
      
        <h2 class="form-signin-heading">发现新鲜事！</h2>
        
        <div class="form-group">
        <label for="inputUsername" class="">用户名:</label>
        <input type="text" name="inputUsername" id="inputUsername" class="form-control" minlength="5" maxlength="12"
        placeholder="请输入用户名" required="required">
        <span class="msg-default" id="unamespan">用户名长度在5到12位之间</span>
        </div>
        
        <div class="form-group">
        <label for="inputPassword" class="">密码:</label>
        <input type="password" name="inputPassword" id="inputPassword" class="form-control" minlength="6" maxlength="12"
        placeholder="请输入密码" required>
        <span class="msg-default hidden">密码长度在6到12位之间</span>
        </div>
        
        <div class="form-group">
        <label for="inputPassword2" class="">再次输入密码:</label>
        <input type="password" name="inputPassword2" id="inputPassword2" class="form-control" minlength="6" maxlength="12"
        placeholder="再次输入密码" required>
        <span id="error_new" class="msg-default hidden">密码长度在6到12位之间</span>
        </div>
        
        <div class="form-group">
        <label for="inputEmail" class="">邮箱:</label>
        <input type="email" name="inputEmail" id="inputEmail" class="form-control" placeholder="请输入邮箱" required >
        <span class="msg-default hidden" id="emailspan">请输入合法的邮箱地址</span>
        </div>
        
        <div class="form-group">
        <label for="inputPhone" class="">手机号:</label>
        <input type="tel" name="inputPhone" id="inputPhone" class="form-control" placeholder="请输入手机号" pattern="(\d{11})|^((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$" required >
        <span class="msg-default hidden" id="phonespan">请输入合法的手机号</span>
        </div>
        
        <button id="bt-register" class="btn btn-lg btn-primary btn-block" type="button" >立即注册</button>
        
        <span>已有账号, <a href="../user/showLogin.do" >立即登录!</a></span>
      </form>
      

    </div> <!-- /container -->

<script>
function check_password(){
	var pw1 = $("#inputPassword").val();
	var pw2 = $("#inputPassword2").val();
	if(pw1 != pw2){
		$("#error_new").text("两次输入的新密码不一致");
		$("#error_new").removeClass().addClass("msg-error");
	}
}


/*1.对用户名进行验证*/
  inputUsername.onfocus = function(){
    this.nextElementSibling.innerHTML = '用户名长度在6到9位之间';
    this.nextElementSibling.className = 'msg-default';
  }
  inputUsername.onblur = function(){
    if(this.validity.valueMissing){
      this.nextElementSibling.innerHTML = '用户名不能为空';
      this.nextElementSibling.className = 'msg-error';
      this.setCustomValidity('用户名不能为空');
    }else if(this.validity.tooShort){
      this.nextElementSibling.innerHTML = '用户名不能少于5位';
      this.nextElementSibling.className = 'msg-error';
      this.setCustomValidity('用户名不能少于5位');
    }else {
      this.nextElementSibling.innerHTML = '用户名格式正确';
      this.nextElementSibling.className = 'msg-success';
      this.setCustomValidity('');
      var data =document.getElementById("inputUsername").value;
      if(!data){   //用户没有输入任何内容
        return;
      }
      /**发起异步GET请求，询问服务器用户名是否已经存在**/
	  $.ajax({
		  //定义请求的url
		  url:"../user/checkUsername.do",
		  //提交的数据
		  data:"username="+$("#inputUsername").val(),
		  //发送请求的方式
		  type:"get",
		  //响应是数据格式
		  dataType:"json",
		  //处理成功响应的数据
		  success:function(obj){
			  //在span节点中设置显示信息
			  $("#unamespan").html(obj.message);
			  //如果state为0，设置样式为msg-error
			  if(obj.state==0){
				  $("#unamespan").attr("class","msg-error");
			  }else{
			  //如果state为1，设置样式为msg-success 
				  $("#unamespan").attr("class","msg-success");
			  }
		  }
	  });
    }
  }

  inputPassword.onfocus = function(){
    this.nextElementSibling.innerHTML = '密码长度在6到12位之间';
    this.nextElementSibling.className = 'msg-default';
  }
  inputPassword.onblur = function(){
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
  

  inputPassword2.onfocus = function(){
    this.nextElementSibling.innerHTML = '密码长度在6到12位之间';
    this.nextElementSibling.className = 'msg-default';
  }
  inputPassword2.onblur = function(){
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
  
  /*3.对邮箱地址进行验证*/
  inputEmail.onblur = function(){
    if(this.validity.valueMissing){
      this.nextElementSibling.innerHTML = '邮箱不能为空';
      this.nextElementSibling.className = 'msg-error';
      this.setCustomValidity('邮箱不能为空');
    }else if(this.validity.typeMismatch){
      this.nextElementSibling.innerHTML = '邮箱格式不正确';
      this.nextElementSibling.className = 'msg-error';
      this.setCustomValidity('邮箱格式不正确');
    }else {
      this.nextElementSibling.innerHTML = '邮箱格式正确';
      this.nextElementSibling.className = 'msg-success';
      this.setCustomValidity('');

      var data =document.getElementById("inputEmail").value;
      if(!data){   //用户没有输入任何内容
        return;
      }
      /**发起异步GET请求，询问服务器邮箱是否已经存在**/
 	  $.ajax({
 		  url:"../user/checkEmail.do",
 		  data:"email="+$("#inputEmail").val(),
 		  type:"get",
 		  dataType:"json",
 		  success:function(obj){
 			  $("#emailspan").html(obj.message);
 			  if(obj.state==0){
 				 $("#emailspan").attr("class","msg-error");
 			  }else{
 				 $("#emailspan").attr("class","msg-success");
 			  }
 		  }
 	  });
    }
  }
  inputEmail.onfocus = function(){
    this.nextElementSibling.innerHTML = '请输入合法的邮箱地址';
    this.nextElementSibling.className = 'msg-default';
  }
  /*3.对手机号进行验证*/
  inputPhone.onblur = function(){
    if(this.validity.valueMissing){
      this.nextElementSibling.innerHTML = '手机号不能为空';
      this.nextElementSibling.className = 'msg-error';
      this.setCustomValidity('手机号不能为空');
    }else if(this.validity.patternMismatch){
      this.nextElementSibling.innerHTML = '手机号格式不正确';
      this.nextElementSibling.className = 'msg-error';
      this.setCustomValidity('手机号格式不正确');
    }else {
      this.nextElementSibling.innerHTML = '手机号格式正确';
      this.nextElementSibling.className = 'msg-success';
      this.setCustomValidity('');

      var data =document.getElementById("inputPhone").value;
      if(!data){   //用户没有输入任何内容
        return;
      }
      /**发起异步GET请求，询问服务器电话是否已经存在**/
     
      $.ajax({
    	  url:"checkPhone.do",
    	  data:"phone="+$("#inputPhone").val(),
    	  type:"get",
    	  dataType:"json",
    	  success:function(obj){
    		  $("#phonespan").html(obj.message);
    		  if(obj.state==0){
    			  $("#phonespan").attr("class","msg-error");
    		  }else{
    			  $("#phonespan").attr("class","msg-success");
    		  }
    	  }
      });
      
    }
  }
  inputPhone.onfocus = function(){
    this.nextElementSibling.innerHTML = '请输入合法的手机号';
    this.nextElementSibling.className = 'msg-default';
  }
</script>

<script>
$('#bt-register').click(function(){
    var lengths=0;
    $('.form-group').each(function(){
      if($(this).find('span').hasClass('msg-success')){
        lengths++;
      }
    });
    if(lengths==5){
    	$.ajax({
    		url:"../user/register.do",
    		//serialize()表示提交表单所有组件
    		data:$("#form-register").serialize(),
    		type:"post",
    		dataType:"json",
    		success:function(obj){
    			if(obj.state==0){
    				$("#unamespan").html(obj.message);
    				$("#unamespan").attr("class","msg-error");
    			}else{
    				location="../user/showLogin.do";
    				//跳转到login页面
    			}
    		}
    	});
    }
    
  })
 
</script>
    
</body>
</html>