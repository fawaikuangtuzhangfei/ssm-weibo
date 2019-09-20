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
                com = com + '</div></div></div>';
                $('#show'+weiboId).prepend(com);
        	}
            
		}
    });
    
}

