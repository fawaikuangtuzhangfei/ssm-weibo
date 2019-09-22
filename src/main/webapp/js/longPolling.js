var pollAction = "../mention/getNotice.do";

var getNotice ={
	type:'GET',
	//async:false,
	url:pollAction,
	timeout:120000, //若超时，则去error
	contentType: 'application/json;charset=utf-8',
    dataType: 'json',
	success:function(data){
		console.log(data.data.fanscount);
		var repostcount = data.data.repostcount;
		var commentcount = data.data.commentcount;
		var replycount = data.data.replycount;
		var likecount = data.data.likecount;
		var fanscount = data.data.fanscount;

		//转发
		if(repostcount > 0){
			$("#repost_badge").html(repostcount);
			$("#repost_badge").css("display","inline-block");
		}
		//评论
		if(commentcount > 0){
			$("#comment_badge").html(commentcount);
			$("#comment_badge").css("display","inline-block");
		}
		//回复
		if(replycount > 0){
			$("#reply_badge").html(replycount);
			$("#reply_badge").css("display","inline-block");
		}
		//粉丝
		if(fanscount > 0){
			$("#fans_badge").html(fanscount);
			$("#fans_badge").css("display","inline-block");
		}
		//赞
		if(likecount > 0){
			$("#like_badge").html(likecount);
			$("#like_badge").css("display","inline-block");
		}
		//通知总数
		var total = repostcount + commentcount + replycount + likecount + fanscount;
		if(total > 0){
			$("#badge").html(total);
			$("#badge").css("display","inline-block");
		}
		$.ajax(getNotice); //不断的调用自己
	},
	 error: function (XMLHttpRequest, textStatus, errorThrown) {
         if (textStatus == "timeout") { // 请求超时
        	 $.ajax(getNotice); // 递归调用
         } else { // 其他错误，如网络错误等
        	 $.ajax(getNotice);
         }
     },
	
}