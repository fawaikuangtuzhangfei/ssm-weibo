/**
 * 实现评论的相关js
 */

//加载评论
// <!--textarea高度自适应-->
	$(function() {
	    $('.content').flexText();
	});	
	
	// <!--textarea限制字数-->
	function keyUP(t) {
	    var len = $(t).val().length;
	    if (len > 139) {
	        $(t).val($(t).val().substring(0, 140));
	    }
	}

  
  //加载评论块
  function loadComment(weiboId){
    var commentAction = "../weibo/showComments.do?weiboId=" + weiboId;
    $.ajax({
        type: 'GET',
        url: commentAction,
        contentType: 'application/json;charset=utf-8',
        dataType: 'json',
        success:function(data) {
        	var result = data.data;
        	console.log(result);
        	$('#show'+weiboId).html("");
        	for(var i in result){
        		var date1 = new Date(result[i].commentTime);
        		var com = '<div class="comment-show-con clearfix ">' +
                '<div class="comment-show-con-img pull-left ">' +
                //头像
                '<img class="img-circle " style="height: 50px; width: 50px;"' +
                'src="/imgUpload/'+ result[i].face + '"></div>' +
                '<div class="comment-show-con-list pull-left clearfix ">' +
                '<div class="pl-text clearfix ">' +
                //昵称
                '<a href="# " class="comment-size-name ">'+ result[i].username +'</a>' +
                '<input type="hidden" class="comment-size-userId" value="'+ result[i].userId +'">'+
                '<input type="hidden" class="comment-size-commentId" value="'+ result[i].commentId +'">'+
                //内容
                '<span class="my-pl-con ">:&nbsp; '+ result[i].commentContent +'</span></div>' +
                '<div class="date-dz ">'+
                //时间
                '<span class="date-dz-left pull-left comment-time ">'+ date1.toLocaleString() +'</span><br>' +
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
                '</div></div><div class="hf-list-con " style="text-align: left;" id="123'+ result[i].commentId +'"></div><br>';
        		console.log(result[i].countReply);
        		if(result[i].countReply == 0) {
                	com = com + '</div></div></div>';
                } else {
                	com = com + '<a href="../weibo/showSingle.do?weiboId='+ weiboId +'" style="color: #987">共'+ result[i].countReply +'条回复</a>'+
                    			'</div></div></div>';
                }
                $('#show'+weiboId).prepend(com);
        	}
            
		}
    });
    
}

//<!--点击回复动态创建回复块-->
$('.comment-show').on('click', '.pl-hf', function() {
   //获取回复人的名字
   var fhName = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.pl-text').find('.comment-size-name').html();
   //回复@
   var fhN = '回复@' + fhName + ':';
   //var oInput = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.hf-con');
   var fhHtml = '<div class="hf-con pull-left"> <textarea class="content comment-input hf-input" placeholder="" onkeyup="keyUP(this)"></textarea> <a href="javascript:;" class="hf-pl">评论</a></div>';
   //显示回复
   if ($(this).is('.hf-con-block')) {
       $(this).parents('.date-dz-right').parents('.date-dz').append(fhHtml);
       $(this).removeClass('hf-con-block');
       $('.content').flexText();
       $(this).parents('.date-dz-right').siblings('.hf-con').find('.pre').css('padding', '6px 15px');
       //console.log($(this).parents('.date-dz-right').siblings('.hf-con').find('.pre'))
       //input框自动聚焦
       $(this).parents('.date-dz-right').siblings('.hf-con').find('.hf-input').val('').focus().val(fhN);
   } else {
       $(this).addClass('hf-con-block');
       $(this).parents('.date-dz-right').siblings('.hf-con').remove();
   }
});
//<!--评论回复块创建-->
$('.comment-show').on('click', '.hf-pl', function() {
   var oThis = $(this);
   var myDate = new Date();
   //获取当前年
   var year = myDate.getFullYear();
   //获取当前月
   var month = myDate.getMonth() + 1;
   //获取当前日
   var date = myDate.getDate();
   var h = myDate.getHours(); //获取当前小时数(0-23)
   var m = myDate.getMinutes(); //获取当前分钟数(0-59)
   if (m < 10) m = '0' + m;
   var s = myDate.getSeconds();
   if (s < 10) s = '0' + s;
   var now = year + '-' + month + "-" + date + " " + h + ':' + m + ":" + s;
   //获取输入内容
   var oHfVal = $(this).siblings('.flex-text-wrap').find('.hf-input').val();
   var oHfName = $(this).parents('.hf-con').parents('.date-dz').siblings('.pl-text').find('.comment-size-name').html();
   var oAllVal = '回复@' + oHfName;
   if (oHfVal.replace(/^ +| +$/g, '') == '' || oHfVal == oAllVal) {

   } else {
       var content;
       $.getJSON("/ssm-weibo/json/pl.json", function(data) {
           var oAt = '';
           var oHf = '';
           $.each(data, function(n, v) {
               var arr;
               var ohfNameArr;
               if (oHfVal.indexOf("@") == -1) {
                   data['atName'] = '';
                   data['hfContent'] = oHfVal;
               } else {
                   arr = oHfVal.split(':');
                   ohfNameArr = arr[0].split('@');
                   console.log(ohfNameArr);

                   data['hfContent'] = arr[1];
                   data['atName'] = ohfNameArr[1];
               }

               if (data.atName == '') {
                   oAt = data.hfContent;
               } else {
                   oAt = ' 回复 <a href="#" class="atName">@' + data.atName + '</a> : ' + data.hfContent;
                   content=data.hfContent;
               }
               oHf = data.hfName;
           });

           var username = $("#username").val();            
           //comment_id
           var commentId = oThis.parents('.hf-con').parents('.date-dz').siblings('.pl-text').find('.comment-size-commentId').val();
           //from_id
           var fromId = $("#userId").val();
           //to_id
           var toId = oThis.parents('.hf-con').parents('.date-dz').siblings('.pl-text').find('.comment-size-userId').val();
           //content
           //time
           var time = now;
           var oHtml = '<div class="all-pl-con"><div class="pl-text hfpl-text clearfix">'+
                       //昵称
                       '<a href="#" class="comment-size-name">'+ username +'</a>'+
                       '<input type="hidden" class="comment-size-userId" value="'+ fromId +'">'+
                       '<input type="hidden" class="comment-size-commentId" value="'+ commentId +'">'+
                       //内容
                       '<span class="my-pl-con">' + oAt + '</span></div><div class="date-dz">'+
                       //时间
                       '<span class="date-dz-left pull-left comment-time">' + now + '</span>'+
                       '<div class="date-dz-right pull-right comment-pl-block">'+
                       '<a href="javascript:;" class="removeBlock">删除</a>'+
                       '<a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a>'+
                       '<span class="pull-left date-dz-line">|</span>'+
                       '<a href="javascript:;" class="date-dz-z pull-left">'+
                       '<i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)</a></div> </div></div>';
           oThis.parents('.hf-con').parents('.comment-show-con-list').find('.hf-list-con').css('display', 'block').prepend(oHtml) && oThis.parents('.hf-con').siblings('.date-dz-right').find('.pl-hf').addClass('hf-con-block') && oThis.parents('.hf-con').remove();
           var json = {
           "commentId":commentId,
           "fromId":fromId,
           "toId":toId,
           "replyContent":content,
           "time":time
           };
           $.ajax({
               type: 'post',
               url: "../reply/insert.do",
               contentType: 'application/json;charset=utf-8',
               data: JSON.stringify(json),
               success:function(data) {
               }
           });

       });
   }
});

//<!--点赞-->
$('.comment-show').on('click', '.date-dz-z', function() {
 var zNum = $(this).find('.z-num').html();
 if ($(this).is('.date-dz-z-click')) {
     zNum--;
     $(this).removeClass('date-dz-z-click red');
     $(this).find('.z-num').html(zNum);
     $(this).find('.date-dz-z-click-red').removeClass('red');
 } else {
     zNum++;
     $(this).addClass('date-dz-z-click');
     $(this).find('.z-num').html(zNum);
     $(this).find('.date-dz-z-click-red').addClass('red');
 }
})
