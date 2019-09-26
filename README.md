# ssm-weibo
记录练习ssm框架搭建微博的过程  
参考 https://github.com/yrucrew/ssm-demo 写的weibo

# day01:  

**上午**:  

1.完成用户的bean类 2.完成新增和查询用户(username)的mapper业务层 

	1.搭建ssm项目
	2.创建用户bean类 User.java
	3.创建dao类、xml文件

**下午**   
1.完成user控制器层，搭建注册用户的jsp页面 2.完成登录

# day02:  

**上午**:  
1.完成发布微博的后台逻辑，简单搭了一个页面进行测试    
	* ！！！1.发布微博仍有问题，因为表单的序列化只能将一些普通的type比如text\password之类的序列化，偶然看到的方法还没确认($.ajax只提交form以文本方式，如果异步提交包含<file>上传是传过不过去,需要使用jquery.form.js的$.ajaxSubmit)
	却无法将 文件file 类型的进行序列化。*

**下午**:  
1.完成查询所有微博  

# day03:  

**上午**: 
1.将之前的注册、登录、我的首页串起来  

	1.获取用户id的时候出现了问题:在登录时，我将user对象存入session时，在我的首页取出时，发现本该是id变为了userId，才发现自己持久层的user类忘记
	将userId改为id   
	2.登录页->我的首页时，将user存入session中，在jsp页面可以很方便的利用el表达式来获取到，${user.id}、${user.username}等   
	
2.完成只查询本人自己的微博  

	1.刚开始想通过页面向控制器传值，但是最开始想到的是从login页面登录传值，所以给form中的username也加了一个name，但是好像不对劲，  
	接着想到了存入过一个session，所以生硬的从request中获取到了HttpSession，在从session中获取到user对象，再从user对象中拿到id
	
**下午**:    
1.完成转发微博  
	1.bootstrap模态框动态传值->直接从中文教程把它的模板复制了过来，然后百度搜索了传值过程  
	首先 $('#myModal').on('show.bs.modal', function (event) { 获取到当前的按钮->获取按钮的data-id的值->获取到模态框->将值写入  
  
2.感觉没有退出登录按钮，每次还得手动输入登录页网址很麻烦，所以增加了退出登录的操作(其实就是销毁session的过程)，配置了拦截器    

3.！！！感觉发布微博和转发微博仍有问题，第一次发送后不会刷新页面，但是你刷新过一次之后，之后的每次都可以正常自动刷新  

	1.找到问题根源，当返回的类型不是json时，就不会进入success

# day04:  

1.发表评论和显示评论  

	1.时间戳的转换var timestamp3 = 1403058804;    
	var newDate = new Date();    
	newDate.setTime(timestamp3 * 1000);    
	console.log(newDate.toLocaleDateString()); // 2014年6月18日     
	console.log(newDate.toLocaleString()); // 2014年6月18日 上午10:33:24      
	console.log(newDate.toLocaleTimeString()); // 上午10:33:24
  
2.删除评论

	1.JQ-动态添加元素-click方法没有触发解决方法:$(document).on('click','.removeBlock',function (e) {  
        console.log(e)      
        var id=$(this).attr('id');
        var url ="../weibo/removeById.do?weiboId="+id;
		 window.location.href=url;
    });
    
# day05:  

1.修改个人资料，！！！虽然目前还无法实现上传头像和修改出生日期  

	1.收获:浏览器->控制器传值时，若使用bean的方法，则必须时name的值和bean类中的set和get方法的属性一致，否则不会成功  
	2.转发可以共享request对象，而重定向不行  

# day06:

1.我的首页跳转到只显示我的微博，实时微博能显示所有人的微博，并在上面可以显示出发布微博的用户名

	1.显示名字时差点掉入一个陷阱，想着新建一个javaBean来包含所有属性，仔细想想发现直接通过sql联表查询即可。  
2.新增查询我的微博  

	1.使用ajax请求跳转页面无法实现页面跳转，但是在F12的请求处可以看到返回的页面，原因是？？？ajax是异步的只接受最后返回的值，不会响应跳转请求更改浏览器地址栏地址转向的，你需要用js判断ajax的返回值是否要跳转，然后设置location.href实现跳转。ajax只是局部刷新，所以不能在后台接口直接进行页面的跳转，只能在ajax的回调函数中进行页面的跳  
3.新增log4j，随便复制了HQ-MES项目中的配置文件，接着又想着把日志存入数据库中，然后就百度，百度了很长时间还未解决！！！！

# day07:  

1.成功存入数据库，一直没有仔细看控制台，现在才发现是jdbc连接错误的原因，java.lang.ClassNotFoundException: com.mysql.jdbc.Driver 接着删除掉jdbc的空格成功
顺便认真学习了一下log4j的具体规则，之前太囫囵吞枣了，一心只是想着实现功能，却因为啥都不了解被困在了此处很长时间，很不值得，不如静下心来，认真看看。  
2. 中秋佳节，放纵了，大家中秋节快乐  

# day08:  
1.实现收藏和取消收藏的功能  

	1.读取收藏状态时，利用jq的each函数获取到当前页面上所有classname为weiboId的属性值，随后调用函数，检验是否已经被收藏  
	2.收藏和取消收藏也很简单，首先文字判断，随后执行相应的逻辑。  
2.新增分页功能

	1.一开始不知从何下手，随去百度，百度之后依旧一头雾水，什么前端处理分页、后端处理分页....都有道理，浏览了一个多小时，发觉不能再浪费时间看下去了，于是找到了之前学子商城的分页。
	2.仔细一看学子商城的分页，发现是直接使用sql的limit实现的，可行，然后do it now， 重新写了两个查询总数的sql，从mapper-controller新增了参数，smm框架改一个东西也挺麻烦。
	3.实现功能后，思索良久，甚至取百度如果获取jsp页面的url，查来查去还是无法解决，因为获取到的永远是请求中的jsp页面，而不是ssm框架控制的转发的url，在这卡了半天，出去上了个wc，想到了解决方案，直接使用modlemap来传值，完美解决  
	
3.新增点赞和取消点赞并显示点赞总数的功能
	
	1.一开始想要用修改文字并使用点赞和取消点赞来->判断执行点赞还是取消点赞，可行，但是后来又想到是否可以增加总数查看，随后又新增总数查看，此时发现无法使用文字来作为判断条件。
	2.再一想也可以使用类来判断，于是百度，百度之后再看看大佬的代码，一顿操作，实现。
	3.显示总数的时候，总是无法实时增长或减少，想了想是先执行搜索，再执行的like，所以永远获取的都是执行前的like总数，修改代码，实现
	
# day09:  
1.修改细节，点击评论不会多次加载评论。  
2.增加转发微博的样式
	
	1.页面传值真是搞死我，中午睡了一觉忘了中途试了多少种方法，直接写解决方法把！
	2.通过新增一个属性repost,里面存放着所有转发的微博，然后用添加到modlemap中的all的setRepost中，然后在jsp页面中调用weibo.repost.xx取出(次数的weibo也就是all)  

3.发布微博时新增图片上传和展示图片

	1.直接使用的yrucrew大神的下载功能,对照着官方文档的相关介绍，学习了一波，基本实现
	
4.使用multipartResolver完成头像的上传

	1.依旧使用yrucrew大神的代码，回顾了之前学子商城所讲的内容。
	
5.新增主页头像的显示和样式的调整
6.新增删除微博的操作
7.利用zoomify实现图片的放大缩小

# day10:
1.完善昨天晚上的显示收藏列表的功能，由于种种事情耽搁，还是放假爽，可以全心全意干自己的事情
2.快速完成点赞功能，修复转发 ！！！！还有个问题:就是多次转发的时候不会转发最开始的那个微博而是会转发当前这个微博！！！
3.修复点击实时微博的时候，显示的永远是当前用户的头像和用户名
4.修复转发的微博显示原微博的用户名、头像、发布时间等。
5.新增点击头像和名字进入此人的微博主页。
6.修复我的收藏和我的点赞页面，显示的永远是当前用户的头像和用户名，新增我的主页
	
	1.jsp页面中改为weibo.username等<-在sql中联表查询到需要的东西
7.修复将我的点赞页面显示出来，修复将我的主页

# day11:  
1.接着昨晚的工作-修复这几个页面的分页跳转功能  
2.干了一天实现悬浮框和点击关注、取消关注->暂时只实现了我的主页
	
	1.popover实现，遇到问题->无法像点赞收藏那样页面加载时就把关注未关注显示出来->永远获取不到那个input
	2.问题原因出在不是动态形成的关注和未关注 决定明天再写，将其变为动态获取 利用c:if和直接再对象中存入一个属性利用el表达式将它显示出来
	3.真正的问题原因在于页面加载的时候找不到这个id为guanzhu150的按钮，因为它没加载
	4.解决办法新鲜出炉->利用popover的函数实现 $(function () { $('.popover-show').on('shown.bs.popover', function () {}
	5.完整解决方案:
	首先给
	6.上午和中午由于各种各样的事情托了托，下午正式开始写的时候才发现问题的原因。
	7.根本没必要获得微博Id获得用户的id即可，给按钮的id也变为guanzhuweiboId和guanzhuweibo.repost.id,完美解决
	8.刚开始的时候在原始的代码上改，浪费了大量的时间，因为前期为了实现这个功能给堆砌了大量的代码！！！
	
# day12:
1.昨天晚上又处理了一堆琐事，基本处于什么都没干的状态，今天继续完善了我的好友圈的功能:里面可以展示我所有关注人的微博
	
	1.遇到的问题:mybatis传值的问题，当有多个参数的时候，还是需要用@Param,并且collection需要等于@Param数组的名字，且item的值要和collection不一样，并且在使用的时候值要写为#{item}的值

2.修改各个页面的跳转问题，一个一个改很麻烦，想把他做成一个jsp但是又不想做。  
3.修复收藏和点赞可能出现的bug-当收藏或者点赞的微博被删除之后就会空指针异常以及数量显示错误  
4.注册时默认头像  
5.分离关注的相关js  
6.给每个页面都加上关注的js  
7.修复评论的相关事情-1.显示与隐藏 2.显示头像等相关信息  
8.给好友圈也加上关注的js
9.向命运低头 导入yrucrew大神的css，真好看！真香
10.添加ajax使其适配我的项目
11.给每个页面加入评论相关js代码
12.解决我的好友圈中转发微博显示不出图片的问题

# day13:
1.践行真香定律，向大神屈服，引入大神写好的css样式，调整自己的页面  
2.给实时微博增加悬浮框  
3.分离导航栏和左右侧边栏  
4.解决页面上显示日期的问题 ->将时间在bean中改为String类型后，神奇的就好了，很奇怪  
5.完善导航栏的搜索，增加user404页面  
6.新增修改密码界面  
7.修改注册页面，两次密码输入不一致的校验
8.新增用户省市的查询  

# day14:
1.新增我的关注列表    
2.修改我的收藏和我的点赞的分页    
3.修复我的首页、实时微博、查找功能后的微博转发无法正常显示的错误  
4.增加我的粉丝列表 ->其实就是复制的我的关注列表  
5.修改悬浮框的中用户的地址  
6.修复查找人的功能  
7.调整页面样式，增加一个标题，修改其他页面悬浮框中用户的地址   

# day15:
1.实现消息提醒 ->不断的利用ajax去请求->去查询差值
		
		1.用一个表去专门记录原先的数量，然后查询现在的数量，两个进行相减
		2.如果大于0则显示在页面上
		3.利用线程休眠，定时进行查询，减小服务器压力(虽然仅仅是个人练习，但我觉得不行哈哈)

2.增加我收到的点赞页面  

# day16:
1.修改我的新粉丝的逻辑 ->修复若取消点赞等之后的bug  
2.新增我收到的评论

# day17:
1.新增回复相关和微博详情页面
3.给每个页面加上长轮询(其实我觉得不算长轮询->就是ajax不断的请求) 现在若是超时的话就直接断开，不递归调用了->不然要是断开连接之后就太卡了
4.新增我收到的转发页面 ->同时新增背景图

# day17:
1.修改我的转发页面，以及mention的相关逻辑

# day18:
1.节奏放缓了很多很多很多，今天上午完成了关注和粉丝页面的相关(包括个人主页的修改)  
2.修复我收到的转发、我收到的赞、我收到的评论的页面跳转功能
