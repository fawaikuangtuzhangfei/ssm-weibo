<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../icons/sina_weibo.ico">

    <title>登录</title>

    <!-- Custom styles for this template -->
    <link href="../css/login.css" rel="stylesheet">
    
   <!-- Bootstrap -->
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../css/login.css">
  </head>

  <body>

    <div class="container">

      <form class="form-signin">
        <h2 class="form-signin-heading">随时随地发现新鲜事!</h2>
        <input type="text" id="username" name="username" class="form-control" placeholder="用户名/邮箱/手机号" required>
        <span class="msg-default" id="unamespan"></span>
        <input type="password" id="password" class="form-control" placeholder="密码" required>
        <span class="msg-default" id="showResult"></span>
        <div class="checkbox">
          <label>
            <input type="checkbox" id="ck_rmbUser" value="记住我"> 记住我
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" id="bt-login" type="button">Sign in</button>
        <p>
		<span>还没有微博？<a href="../user/showRegister.do">立即注册!</a></span>
        </p>
      </form>

    </div> <!-- /container -->
	<div id="showResult"></div>

<script src="../js/jquery-3.1.1.min.js"></script>
<script src="../jquery/jquery.cookie.js"></script>
<script>
    $("#username").blur(function(){
        var data = $("#username").val();
        if (data == null || data == "") {
            $("#unamespan").text("用户名不能为空！");
            $("#unamespan").css("color","red");
            return false;
        }
    });
    $("#username").focus(function(){
        var data = $("#username").val();
        if (data == null || data == "") {
            $("#unamespan").text("");
            return true;
        }
    });
</script>
<script>
    $('#bt-login').click(function(){
    	var temp = $("#username").val();
    	console.log(temp);
    	if(temp != null || temp != " "){
    		$.ajax({
            	url:"../user/login.do",
            	data:"username="+$("#username").val()+
            	      "&password="+$("#password").val(),
            	type:"post",
            	dataType:"json",
            	success:function(obj){
            		//显示错误信息
            		if(obj.state==0){
            			//设置错误信息
            			$("#showResult").html(obj.message);
            			//给错误信息的 文本设置为red
            			$("#showResult").css("color","red");
            		}else{
            			//清空错误信息
            			$("#showResult").html("");
            			Save();
            			//显示首页
            			location.href='../weibo/showOne.do';
            		}
            	}
            });
    	}else{
    		$("#unamespan").text("用户名不能为空！");
            $("#unamespan").css("color","red");
    	}
        
    });
</script>
<script type="text/javascript">

    $(document).ready(function () {
        if ($.cookie("rmbUser") == "true") {
            $("#ck_rmbUser").attr("checked", true);
            $("#username").val($.cookie("username"));
            $("#password").val($.cookie("password"));
        }
    });

    //记住用户名密码
    function Save() {
    	//prop()表示判断复选框是否被选中。值是 true和false
        if ($("#ck_rmbUser").prop("checked")) {
            var str_username = $("#username").val();
            console.log(str_username);
            var str_password = $("#password").val();
            $.cookie("rmbUser", "true", { expires: 7 }); //存储一个带7天期限的cookie
            $.cookie("username", str_username, { expires: 7 });
            $.cookie("password", str_password, { expires: 7 });
        }
        else {
            $.cookie("rmbUser", "false", { expire: -1 });
            $.cookie("username", "", { expires: -1 });
            $.cookie("password", "", { expires: -1 });
        }
    };
</script>

    
 
  </body>
</html>
