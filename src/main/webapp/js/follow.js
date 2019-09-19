/**
 * 实现关注的相关js
 */

//悬浮框的显示
$(function() { 
  $("[data-toggle='popover']").popover({ 
    html : true,  
    title: 123,  
    delay:{show:500, hide:1000}, 
    content: function() { 
     return 123;  
    }  
  }); 
});

//悬浮框显示出来后进行什么操作
$(function () { $('.popover-show').on('shown.bs.popover', function () {
    	pdIsFollow();
	})
});

//是否关注
function pdIsFollow(){
	var btns = new Array();
	//获取当前用户
	var userId = $("#userId").val();
	//遍历当前页面的转发所有用户
	$(".followId").each(function(i,n){
		  btns[i] = $(this).val();
		  pdUserFollowOther(btns[i], userId);
	  	});
	//所有原创
	var btnss = new Array();
	$(".followWeiboId").each(function(i,n){
		  btnss[i] = $(this).val();
		  pdUserFollow(btnss[i], userId);
	  	});
}
//是否当前微博id
function pdUserFollow(followId, userId) {
$.ajax({
    type: "post",
    url: "../relation/selectIsFollow.do",
    data: { "followId": followId, "userId": userId },
    dataType:"json",
    success:function (obj) {
        if (obj.state==1) {
            $('#guanzhu'+ followId).val('取消关注');
        } else {
            $("#guanzhu"+ followId).val('关注');
        }
    }
})
}
//关注转发微博id
function pdUserFollowOther(followId, userId) {
	  $.ajax({
	      type: "post",
	      url: "../relation/selectIsFollow.do",
	      data: { "followId": followId, "userId": userId },
	      dataType:"json",
	      success:function (obj) {
	          if (obj.state==1) {
	              $('#guanzhu'+ followId).val('取消关注');
	          } else {
	              $("#guanzhu"+ followId).val('关注');
	          }
	      }
	  })
	}

//关注-点击之后变为已关注  互相关注-关注
function guanzhu(followId) {
	  var userId = $("#userId").val();
	  if($("#guanzhu"+ followId).val()=="关注"){
		  $.ajax({
          type: "POST",
          url: "../relation/follow.do",
          data: { "followId": followId, "userId": userId },
          dataType: "json",
          success: function (obj) {
        	  if (obj.state==1) {
        		  $("#guanzhu"+ followId).val('取消关注');
              } 
         }
      })
	  }else{
		  $.ajax({
          type: "POST",
          url: "../relation/defollow.do",
          data: { "followId": followId, "userId": userId },
          dataType: "json",
          success: function (obj) {
        	  if (obj.state==0) {
        		  $("#guanzhu"+ followId).val('关注');
              } 
         }
      })
	  }
}
//关注他人
function guanzhuOther(followId) {
	  var userId = $("#userId").val();
	  if($("#guanzhu"+ followId).val()=="关注"){
		  $.ajax({
        type: "POST",
        url: "../relation/follow.do",
        data: { "followId": followId, "userId": userId },
        dataType: "json",
        success: function (obj) {
      	  if (obj.state==1) {
      		  $("#guanzhu"+ followId).val('取消关注');
            } 
       }
    })
	  }else{
		  $.ajax({
        type: "POST",
        url: "../relation/defollow.do",
        data: { "followId": followId, "userId": userId },
        dataType: "json",
        success: function (obj) {
      	  if (obj.state==0) {
      		  $("#guanzhu"+ followId).val('关注');
            } 
       }
    })
	  }
}