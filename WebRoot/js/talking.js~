$(document).ready(init) ;
function init(){
    showSticky("羽毛球") ;      //显示便利
    //选择帖子板块
    $('.breadcrumb li a').click(function(){
        $('#stickies').empty() ;
        showSticky($(this).html()) ;
    }) ;
	var navbar;
	$.ajax({
	url:"getAllTalks.do",
	type:"POST",
	async:false,
	success: function(data){
		//alert(data);
		//navbar = data.NAVBAR
		for(var i=0;i<data.length;i++)
		{
			var talk = data[i];
			addSticky(talk.uid,talk.title,talk.context,talk.kind);
			
		}
	}
	});
    
    //发帖
    var my_label = '' ;
    $('#my-enter').click(function(err){
        my_title = document.getElementById("my-title").value ;
        my_content = document.getElementById("my-content").value ;
        if(my_label == '')
        {
			 alert("请选择一个标签") ;
		}
        else
		{
			$.ajax({url:"addTalk.do",
			type:"POST",
			async:false,
			data:{"title":my_title,"context":my_content,"kind":my_label},
			success: function(data){
				if(data>0)
				{
					alert("发布成功！");
					location.href = "talking.jsp";
				}
				else
				{
					alert("error");
				}
			},
			error:function(){
				alert("error");
			}
		});
		}
			      //提交帖子
    }) ;
    $('#myWords .modal-dialog form .label').click(function(){
        $(this).css('backgroundColor','red') ;
        my_label = $(this).html() ;
    }) ;
}

//发帖到服务器
function post_label(my_title,my_content,my_label){
	$.ajax({url:"addTalk.do",
	type:"POST",
	async:false,
	data:{"title":my_title,"context":my_content,"kind":my_label},
	success: function(data){
		if(data>0)
		{
			alert("发布成功！");
		}
		else
		{
			alert("error");
		}
	},
	error:function(){
		alert("error");
	}
});
}


//显示便利贴
function showSticky(type){
    console.log("讨论专区---板块" +type) ;
    var flag = true ;
    for(var i=0; i<localStorage.length;i++){
        var key = localStorage.key(i) ;
        if(key.substring(0,6) == "sticky"){
            flag = false ;
            $('#stickies').empty() ;
            var items = localStorage.getItem(key).split(':') ;      //根据冒号分出 标题和内容
            var my_content = items[1] ;                             //获取内容
            var my_title = items[0] ;                               //获取标题
            var my_label = items[2] ;                               //获取标签
            var user = items[3] ;                                   //获取用户
            addSticky(user,my_title,my_content,my_label) ;
        }
    }    
    if(flag)
        $('#stickies').empty().append('<h2>亲，发个帖子可以脱单哦～</h2>') ;
    else
        $('.pagination').css('visibility','visible') ;
    
}



//增加便利贴
function addSticky(user,my_title,my_content,my_label){
    var sticky = document.getElementById("stickies") ;
    var span = document.createElement("div") ;     //span
    span.setAttribute("class","panel panel-default cook") ;
    var div_title = document.createElement('div') ;     //heading
    div_title.setAttribute("class","panel-heading") ;
    var p_title = document.createElement('h3') ;        //title
    p_title.setAttribute("class","panel-title") ;
    var p_label = document.createElement('span') ;        //label
    p_label.setAttribute("class","label label-info") ;
    var p_content = document.createElement('div') ;     //body
    p_content.setAttribute("class","panel-body") ;
    var p_footer = document.createElement("div") ;      //footer
    p_footer.setAttribute("class","panel-footer") ;
    // var li = document.createElement("li") ;
    var comment = document.createElement("p") ;      //footer
    comment.setAttribute("class","comment") ;
    comment.innerHTML = '<u> 参与讨论一波？ </u>' ;

    p_title.innerHTML = my_title ;
    p_label.innerHTML = my_label ;
    p_content.innerHTML = my_content ;

    
    //监听
    p_footer.addEventListener("mouseover",function(){
        p_footer.appendChild( document.createElement('ul') ) ;
        var comment_link =  user ;
        //评论
        p_footer.childNodes[0].addEventListener('click',function(){
            //console.log("user: " + comment_link) ;
            $('#myComment').modal('show') ;
            var comment_data ;
            $("#myComment button[type='submit']").click(function(){
                comment_data = $('#myComment textarea').val() ;
                console.log("您提交给" + comment_link + "的内容为： " +comment_data) ;
                $('#myComment').modal('hide') ;
            }) ;
			//显示评论
            $(this).append("<br>" + comment_data + '<hr>') ; 
        }) ;
    }) ;
    p_footer.addEventListener("mouseleave",function(){
       // $(this).empty() ;
    }) ;


    p_footer.appendChild(comment) ;
    div_title.appendChild(p_title) ;
    div_title.appendChild(p_label) ;
    span.appendChild(div_title) ;
    span.appendChild(p_content) ; 
    span.appendChild(p_footer) ;
    //li.appendChild(span) ;
    sticky.appendChild(span) ;

    $('.comment').on('click',function(event){
        console.log("click comment") ;
        $(this).modal('myComment') ;
    }) ;

}

